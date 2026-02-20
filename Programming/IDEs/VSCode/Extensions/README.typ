#import "@local/ib:0.1.0": *
#title[Extensions for Visual Studio Code]
#a[Extensions for Visual Studio family of products | Visual Studio Marketplace][https://marketplace.visualstudio.com/VSCode]

= #a[API][https://code.visualstudio.com/api]
#a[Your First Extension][https://code.visualstudio.com/api/get-started/your-first-extension]
- ```sh npx --package yo --package generator-code -- yo code```

#a[Extension Anatomy][https://code.visualstudio.com/api/get-started/extension-anatomy]

- #a[Activation Events][https://code.visualstudio.com/api/references/activation-events]

- #a[Contribution Points][https://code.visualstudio.com/api/references/contribution-points]

- #a[Extension Capabilities][https://code.visualstudio.com/api/extension-capabilities/overview]

- #a[Bundling Extensions][https://code.visualstudio.com/api/working-with-extensions/bundling-extension]
  - ```sh yo code```: `unbundled`, `webpack`, `esbuild`

    `unbundled` is default, although VS Code suggests bundling extension.

  - Vite

    #a[Using Vite for bundling your Visual Studio Code extension | Elio Struyf][https://www.eliostruyf.com/vite-bundling-visual-studio-code-extension/]
    - #t[2411]
      #q[The `CJS` build of Vite's Node API is no longer supported and will be removed in version 6.
      As Visual Studio Code extensions do not support ESM, my recommendation is use an alternative bundler such as `webpack`, `tsup`, or `esbuild` instead of Vite.]
  
  #a[Use ESBuild instead of Webpack - Issue \#1672 - ionide/ionide-vscode-fsharp][https://github.com/ionide/ionide-vscode-fsharp/issues/1672]

- Hot reload

  #a[tomjs/vite-plugin-vscode: 用 vue/react 来开发 vscode extension webview ，支持 esm 和 cjs。Use vue/react to develop vscode extension webview, supporting esm and cjs.][https://github.com/tomjs/vite-plugin-vscode]

  #a[Hot Reload for VS Code Extension Development][https://blog.hediet.de/post/hot_reload_for_vs_code_extension_development]

#a[UX Guidelines][https://code.visualstudio.com/api/ux-guidelines/overview]

#a[Modern VS Code extension development: The basics | Snyk][https://snyk.io/blog/modern-vs-code-extension-development-basics/]

== Tools
- #a[estruyf/vscode-cli: VS Code CLI to help you with extension development and documentation][https://github.com/estruyf/vscode-cli]
  (discontinued)

= Wasm
- NodeJS/browser
- WASI

#a[How we built a VS Code extension with Rust, WebAssembly, and TypeScript][https://www.osohq.com/post/building-vs-code-extension-with-rust-wasm-typescript]

#a[How to create a vscode extension using Rust? : r/rust][https://www.reddit.com/r/rust/comments/1aty0c7/how_to_create_a_vscode_extension_using_rust/]

== Wasm
- #a[vscode-sys - crates.io: Rust Package Registry][https://crates.io/crates/vscode-sys]
  (discontinued)

== WASI
- Why WASI if NodeJS/browser already supports Wasm?

  CPython requires WASI or emscripten, and VS Code chose WASI.

  #a[WASM in Extension: WASI vs WASI-less - microsoft/vscode-discussions - Discussion \#211][https://github.com/microsoft/vscode-discussions/discussions/211]

  #a[WebAssembly System Interface (WASI) | Node.js Documentation][https://nodejs.org/api/wasi.html]

#a[microsoft/vscode-wasm: A WASI implementation that uses VS Code's extension host as the implementing API][https://github.com/microsoft/vscode-wasm]
(inactive)
- #a[\@vscode/wasm-wasi - npm][https://www.npmjs.com/package/@vscode/wasm-wasi]

#a[VSCode-WASM: Implement a first version of a WebShell | Hacker News][https://news.ycombinator.com/item?id=35768210]

#a[Run WebAssemblies in VS Code for the Web][https://code.visualstudio.com/blogs/2023/06/05/vscode-wasm-wasi]
- #q[
  The Python team provides WebAssembly binaries of their interpreter in two flavors:
  one compiled with emscripten and the other compiled with the WASI SDK.

  For VS Code, we decided to support WASI.
  Although our primary focus is to execute WASM code in the browser, we are not actually running it in a pure browser environment.
  We must run WebAssemblies in VS Code's extension host worker since this is the standard way that VS Code is extended.
  The extension host worker provides, beside the browser's worker API, the entire VS Code extension API.
  So instead of wiring a `printf` call in a C/C++ program to the browser's console, we actually want to wire it to VS Code's Terminal API.
  Doing this in WASI was easier for us than in emscripten.
  ]

#a[Using WebAssembly for Extension Development][https://code.visualstudio.com/blogs/2024/05/08/wasm]
#a-badge[https://www.reddit.com/r/rust/comments/1colxqb/using_webassembly_for_extension_development_vs/]
- Using VS Code APIs directly from Rust

  #q[
  Although this exploration appears promising, we have decided not to proceed with it for now.
  The primary reason is the lack of async support in WASM.
  Many VS Code APIs are asynchronous, making them difficult to proxy directly into WebAssembly code.
  We could run the WebAssembly code in a separate worker and employ the same synchronization mechanism used in the
  #a[WASI Preview 1 support][https://code.visualstudio.com/blogs/2023/06/05/vscode-wasm-wasi]
  between the WebAssembly worker and the extension host worker.
  However, this approach might lead to unexpected behavior during synchronous API calls, as these calls would actually be executed asynchronously.
  As a result, the observable state could change between two synchronous calls (for instance, `setX(5); getX();` might not return 5).]

#a[Using WebAssembly for Extension Development - Part Two][https://code.visualstudio.com/blogs/2024/06/07/wasm-part2]

#a[VSCode, WASM, WASI][https://floooh.github.io/2023/12/31/vscode-wasm-wasi.html]

= #a[Web Extensions][https://code.visualstudio.com/api/extension-guides/web-extensions]

= Publishing
#a[Extension Manifest][https://code.visualstudio.com/api/references/extension-manifest]

#a[Publishing Extensions][https://code.visualstudio.com/api/working-with-extensions/publishing-extension]
- ```sh npm install -g @vscode/vsce```
- ```sh vsce package```
- Format: ZIP
  - `[Content_Types].xml`
  - `extension.vsixmanifest`
  - `extension`
    - `package.json` (all the content)
    - `dist` (without `.map`)
    - `readme.md`

= Data
- Windows: `%USERPROFILE%\.vscode`
  - `extensions`
    - `.obsolete`

    #a[microsoft visual studio not deleting old extenstnios - still.. like MS systematic solution - Issue \#206256][https://github.com/microsoft/vscode/issues/206256]

    #a[Extension with an old version is not removed by reloading VsCode after upgrading to a newer version - Issue \#182675][https://github.com/microsoft/vscode/issues/182675]

- Extension custom data
