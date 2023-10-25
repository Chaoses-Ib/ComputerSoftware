# [Linguist](https://github.com/github/linguist)
Linguist is used on GitHub to detect blob languages, ignore binary or vendored files, suppress generated files in diffs, and generate language breakdown graphs.

Linguist takes the list of languages it knows from [languages.yml](https://github.com/github/linguist/blob/master/lib/linguist/languages.yml) and uses a number of methods to try and determine the language used by each file, and the overall repository breakdown. Linguist starts by going through all the files in a repository and excludes all files that it determines to be in one of the followings while taking into account any [overrides](https://github.com/github/linguist/blob/master/docs/overrides.md):
- Binary data
- Vendored code
- Generated code
- Documentation
- Data languages (e.g. SQL)
- Prose languages (e.g. Markdown)
  
  Override:
  ```gitattributes
  *.md linguist-detectable
  ```

If you're receiving incorrect results, please consult the [Linguist troubleshooting guide](https://github.com/github/linguist/blob/master/docs/troubleshooting.md) for help.