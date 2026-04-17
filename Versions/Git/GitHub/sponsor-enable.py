#! /usr/bin/env python3
# /// script
# requires-python = ">=3.5"
# dependencies = [
#     "requests>=2",
# ]
# ///
"""Enable GitHub sponsorships for all repositories of an user.
This script:
- Reads a GitHub personal access token
- Lists all repositories in the configured user
- Skips archived repositories
- Enables the sponsorship button on each remaining repository via the GitHub API
Requirements:
- Permissions to read user repositories and update repository settings

Original: https://gist.github.com/monperrus/e2fd9910348b8ccbe23dc85a41c565c7
"""
import requests

# --- CONFIGURATION ---
# GITHUB_TOKEN = keyring.get_password("login2", "github_token")
GITHUB_TOKEN = ''
USER_NAME = "Chaoses-Ib"
# ---------------------

BASE_URL = "https://api.github.com"
HEADERS = {
    "Authorization": f"Bearer {GITHUB_TOKEN}",
    "Accept": "application/vnd.github+json",
}

def get_all_repos(user):
    """Fetches all repositories for the user using the REST API."""
    repos = []
    page = 1
    while True:
        url = f"{BASE_URL}/user/repos?per_page=100&page={page}"
        response = requests.get(url, headers=HEADERS)
        if response.status_code != 200:
            print(f"Error fetching repos: {response.text}")
            break
        
        data = response.json()
        if not data:
            break
            
        repos.extend(data)
        page += 1
    return repos

def enable_sponsorship(node_id, repo_name):
    """Enables the sponsorship button via GraphQL mutation."""
    query = """
    mutation($input: UpdateRepositoryInput!) {
      updateRepository(input: $input) {
        repository {
          name
          hasSponsorshipsEnabled
        }
      }
    }
    """
    variables = {
        "input": {
            "repositoryId": node_id,
            "hasSponsorshipsEnabled": True
        }
    }
    
    response = requests.post(
        f"{BASE_URL}/graphql",
        headers=HEADERS,
        json={"query": query, "variables": variables}
    )
    
    if response.status_code == 200:
        res_data = response.json()
        if "errors" in res_data:
            print(f"❌ Failed to update {repo_name}: {res_data['errors'][0]['message']}")
        else:
            print(f"✅ Enabled sponsorship for: {repo_name}")
    else:
        print(f"❌ HTTP Error for {repo_name}: {response.status_code}")

print(f"Fetching repositories for user: {USER_NAME}...")
repos = get_all_repos(USER_NAME)
print(f"Found {len(repos)} repositories.\n")

for repo in repos:
    # Skip archived repositories as they cannot be edited
    if repo.get('archived'):
        print(f"⏭️  Skipping archived repo: {repo['name']}")
        continue
        
    node_id = repo['node_id']
    enable_sponsorship(node_id, repo['name'])
