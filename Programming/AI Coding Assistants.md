# AI Coding Assistants
- VS Code: GitHub Copilot
- GitHub Copilot
  - [Subscriptions](https://docs.github.com/en/copilot/about-github-copilot/subscription-plans-for-github-copilot)
  - [Rate limits](https://docs.github.com/en/github-models/prototyping-with-ai-models#rate-limits)
- Cursor
- [Tabnine](https://www.tabnine.com/) ([GitHub](https://github.com/codota/TabNine))

Web/UI:
- [v0 by Vercel](https://v0.dev/)
- [bolt.new](https://bolt.new/)
- [Cofounder: ai-generated apps , full stack + generative UI](https://github.com/raidendotai/cofounder)
- [tldraw: make real](https://makereal.tldraw.com/)

  > 以前就觉得 tldraw 很适合用来画原型图，没想到他们做了一个工具，可以把线框图通过 AI 变成真实的可交互页面，虽然我一直不喜欢 AI 生成的代码，但用于设计过程的预览还是非常棒的

  不过得要 OpenAI key

Chat-only:
- [→LLM services](https://github.com/Chaoses-Ib/ArtificialIntelligence/blob/main/Language/Models/Services.md)
- Windows Terminal

[Devs gaining little (if anything) from AI coding assistants : r/programming](https://www.reddit.com/r/programming/comments/1fs72u2/devs_gaining_little_if_anything_from_ai_coding/)

## [VS Code: GitHub Copilot](https://code.visualstudio.com/docs/copilot/overview)
- Inline code suggestions
  - Rename suggestions
- Fix coding issues
- Smart actions
  - Explain
  - Fix coding issues
  - Review and comment
  - Generate code documentation
  - Generate tests
- Semantic search results
- Inline Chat (`Ctrl+I`)
  - Terminal inline chat
- Quick Chat (`Ctrl+Alt+Shift+L`)
- Chat (`Ctrl+Alt+I`)
  - [Attach context to your prompt](https://code.visualstudio.com/docs/copilot/copilot-vscode-features#_attach-context-to-your-prompt)
- [Copilot Edits](https://code.visualstudio.com/docs/copilot/copilot-edits) (`Ctrl+Shift+I`)
- Generate a new VS Code workspace

[Best practices for GitHub Copilot in VS Code](https://code.visualstudio.com/docs/copilot/prompt-crafting)

[Visual Studio Code October 2024](https://code.visualstudio.com/updates/v1_95)

[VSCode October 2024 (version 1.95) (90% of the features are Copilot-related) : r/programming](https://www.reddit.com/r/programming/comments/1gf0vf9/vscode_october_2024_version_195_90_of_the/)

> copilot 最有用的也就 autocompletion, 当高级 intellsense 用还挺好. chat 反正用不上几次啦(  
> 第三方现在主要是 pylance/pyright 不好使很烦.... basedpyright 挺好的但是 ipynb 不支持....

## [Cursor](https://www.cursor.so/)
[GitHub](https://github.com/getcursor/cursor)

> Cursor 現在三大優勢：可以用claude、可以自動完成前一行、AI可以同時修改多檔案與建新檔案

> 话说为什么 cursor 非要改vscode 而不是做成一个extension
>
> 應該就是三點
> 1. autocomplete 可以同時改前一行
> 2. Composer 功能可以編輯多檔案與開新檔案
> 3. 他要的UI介面
> 
> 1 2 對 VScode 來說都是大改 (我猜的)
> 
> 就商模上來說，做插件會更好，因為願意換編輯器的人相對少