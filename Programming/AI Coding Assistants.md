# AI Coding Assistants
- VS Code: GitHub Copilot
- [GitHub Copilot](#github-copilot)
- Cursor
- [Codeium](#codeium)
- [Tabnine](https://www.tabnine.com/) ([GitHub](https://github.com/codota/TabNine))
- Amazon CodeWhisperer

  2023-04 [Amazon CodeWhisperer, Free for Individual Use, is Now Generally Available | AWS News Blog](https://aws.amazon.com/cn/blogs/aws/amazon-codewhisperer-free-for-individual-use-is-now-generally-available/)
  - [个人用户免费，亚马逊正式推出 AI 编程服务 CodeWhisperer - IT之家](https://m.ithome.com/html/686391.htm)
- Bito AI

  [效率提升10倍？比ChatGPT靠谱多了！这才是开发者需要的神器。。。](https://mp.weixin.qq.com/s/q7XiJrsbq-DDML0L2Ngz5w)

China:
- 智谱: [CodeGeeX](https://codegeex.cn/)
- 非十: [FittenCode](https://code.fittentech.com/)
- 阿里: [通义灵码](#通义灵码)
- 百度: 文心快码
- 腾讯AI助手
- 字节: MarsCode

Web/UI:
- [v0 by Vercel](https://v0.dev/)
- [bolt.new](https://bolt.new/)
- [Cofounder: ai-generated apps , full stack + generative UI](https://github.com/raidendotai/cofounder)
- [tldraw: make real](https://makereal.tldraw.com/)

  > 以前就觉得 tldraw 很适合用来画原型图，没想到他们做了一个工具，可以把线框图通过 AI 变成真实的可交互页面，虽然我一直不喜欢 AI 生成的代码，但用于设计过程的预览还是非常棒的

  不过得要 OpenAI key

Chat-only:
- [→LLM services](https://github.com/Chaoses-Ib/ArtificialIntelligence/blob/main/Language/Models/Services.md)
  - ChatGPT: Code Interpreter
- Windows Terminal

Tools:
- [gpt-macro: ChatGPT powered Rust proc macro that generates code at compile-time.](https://github.com/retrage/gpt-macro)
- [codex\_py2cpp: Converts python code into c++ by using OpenAI CODEX.](https://github.com/alxschwrz/codex_py2cpp)

[e2b-dev/awesome-devins: Awesome Devin-inspired AI agents](https://github.com/e2b-dev/awesome-devins)

## GitHub Copilot
- [Subscriptions](https://docs.github.com/en/copilot/about-github-copilot/subscription-plans-for-github-copilot)
  - $10/mo

- [Getting free access to Copilot as a student, teacher, or maintainer - GitHub Docs](https://docs.github.com/en/copilot/managing-copilot/managing-copilot-as-an-individual-subscriber/managing-your-copilot-subscription/getting-free-access-to-copilot-as-a-student-teacher-or-maintainer)
  - As a verified student on GitHub Education
    - 85元/yr
  - As a verified teacher on GitHub Education
  - As a maintainer of a popular open-source repository
    - https://github.com/settings/copilot
    - https://github.com/github-copilot/signup/copilot_individual

    [What's the criteria for being considered "a maintainer of a popular open source ... | Hacker News](https://news.ycombinator.com/item?id=31826013)
    - 2k stars
    - > A sample of the first 25k repositories and their stargazers on GitHub shows that the top 1% have over 600 stars, and the top 0.1% have nearly 5,000 stars. That's a very small sample, however.

    ["Github Copilot is free for maintainers of popular open source projects" : r/github](https://www.reddit.com/r/github/comments/1bdmfqi/github_copilot_is_free_for_maintainers_of_popular/)
    - 1.6k stars
    - > My best guess is that free copilot access is coming from a repository I have with <20 stars, but that GitHub detects as having 2k+ repositories dependent on it.

    Just many commits are not enough.

- [Rate limits](https://docs.github.com/en/github-models/prototyping-with-ai-models#rate-limits)

合租：
- > copilot一直在升级，现在如果不走转发，ip多了直接就ban
- [Copilot开车平台](https://cocopilot.org/dash)
  - > 就是自己伪造一个github enterprise server
  - [CoCopilot 重大更新 - 运营反馈 - LINUX DO](https://linux.do/t/topic/94939)
  - [A small snippet to use CoCoPilot without patching Copilot plugin](https://gist.github.com/NyaMisty/d474fbaa5bb9580a935608d1c331f755)
- [Lael / copilot\_proxy - GitLab](https://gitlab.com/LaelLuo/copilot_proxy)

[xiongkai0920/cocopilot-gpt](https://github.com/xiongkai0920/cocopilot-gpt)

Discussions:
- 2024-11 [话说你们 copilot 都是$10 自己订阅的吗？ - V2EX](https://www.v2ex.com/t/1092830)

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
  - Fast but less context
- Quick Chat (`Ctrl+Alt+Shift+L`)
- Chat (`Ctrl+Alt+I`)
  - [Attach context to your prompt](https://code.visualstudio.com/docs/copilot/copilot-vscode-features#_attach-context-to-your-prompt)
- [Copilot Edits](https://code.visualstudio.com/docs/copilot/copilot-edits) (`Ctrl+Shift+I`)
  - Good at context but slow
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

## [Codeium](https://codeium.com/)
- [Autocomplete](https://docs.codeium.com/autocomplete/overview): `Alt+\`, `Alt+[` / `Alt+]`
  - Accept suggestion word-by-word: `Ctrl+→`
- [Chat](https://docs.codeium.com/chat/overview): `Ctrl+Shift+A`
  - [Stats for nerds](https://docs.codeium.com/chat/overview#stats-for-nerds)
- [Command](https://docs.codeium.com/command/overview): `Ctrl+I`
- [Supercomplete](https://docs.codeium.com/supercomplete/overview)
- Smart Paste: `Ctrl+Alt+V`

[VS](https://codeium.com/visual_studio_tutorial)

## [通义灵码](https://tongyi.aliyun.com/lingma)
- 免费
- VS Code
  - Completion: `Alt+P`, `Alt+[` / `Alt+]`
    - Accept next line: `Alt+↓`
  - Chat: `Ctrl+Shift+L`
    - Comment: `Shift+Alt+V`
    - Explain: `Shift+Alt+P`
    - Optimize: `Shift+Alt+M`
    - Unit test: `Shift+Alt+U`
- VS
- 读 context 的能力比 Copilot 弱很多
- 离线单行补全

  > 通义灵码代码补全默认使用云端大模型进行智能续写，当网络情况有限制时，可使用本地补全模式，单击状态栏图标切换至本地补全模式后，编辑器中进行编码时，通义灵码会给出单行的代码建议。

[通义灵码插件使用指南\_智能编码助手\_AI编程\_智能编码助手通义灵码(Lingma)-阿里云帮助中心](https://help.aliyun.com/zh/lingma/user-guide/plugin-usage-guide)

[通义灵码 - 免费的 AI 智能编程助手插件！阿里云国内 GitHub Copilot 替代品 - 异次元软件下载](https://www.iplaysoft.com/tongyi-lingma.html)

Discussions:
- 2024-07 ["通义灵码"和"Github Copilot" 差距大吗？ - V2EX](https://v2ex.com/t/1057602)

  > Copilot 天花板 ，通义经常把 cpu 吃满而且提示不准确，还老是丢括号

## Discussions
- 2023-01 [The End of Programming -- Communications of the ACM](https://cacm.acm.org/opinion/the-end-of-programming/)
- 2023-01 [奇客Solidot | OpenAI 雇佣千名合同工改进 AI 的编程能力](https://www.solidot.org/story?sid=73986)
- 2023-03 [微软发布Power Platform 智能 Copilot副驾驶®，引领AI生成式低代码应用开发新时代 -- 新闻中心](https://news.microsoft.com/zh-cn/%E5%BE%AE%E8%BD%AF%E5%8F%91%E5%B8%83power-platform-copilot%EF%BC%8C%E5%BC%95%E9%A2%86ai%E7%94%9F%E6%88%90%E5%BC%8F%E4%BD%8E%E4%BB%A3%E7%A0%81%E5%BA%94%E7%94%A8%E5%BC%80%E5%8F%91%E6%96%B0%E6%97%B6/)
- 2023-05 [GitHub放大招！CEO现场挑战18分钟开发小游戏，人还在台上网友已经玩到了](https://mp.weixin.qq.com/s/YSZCcHmxIcCEVVsbOTOCRQ)
- 2023-05 [奇客Solidot | 黄仁勋称 AI 意味着人人都能成为程序员](https://www.solidot.org/story?sid=75099)
- 2023-08 [研究发现：ChatGPT 回答编程问题的错误率超过 50% - IT之家](https://www.ithome.com/0/711/016.htm)
- 2023-10 [VSCode 快速入门 | Digital Garden | 王半仙](https://banxian-w.com/article/2023/10/17/2614.html)

  > 在网上调研了一下 [v2ex 用户的使用习惯或推荐](https://v2ex.com/t/1029052)：首推 Copilot（但可能存在延迟问题），其次推荐较多的是 CodiumAI 和通义灵码（可能偶尔会出现 CPU 占用过高的问题）

- ~~2023-10 [微软在 GitHub Copilot 服务上资金亏损严重](https://t.me/CE_Observe/29669)~~
- 2023-11 [生成式AI不再是賠錢貨、微軟的Copilot賺錢了 - MoneyDJ理財網](https://www.moneydj.com/kmdj/news/newsviewer.aspx?a=dbe78aef-36c4-4db4-a39e-aa85d379b921)
- 2023-12 [\[deleted by user\] : r/programming](https://www.reddit.com/r/programming/comments/189a2na/deleted_by_user/)
- 2023-12 [IBM保证Watsonx中的AI Cobol翻译器不会取代开发人员 - IBM - cnBeta.COM](https://www.cnbeta.com.tw/articles/tech/1403697.htm)
- 2024-01 [New GitHub Copilot Research Finds 'Downward Pressure on Code Quality' -- Visual Studio Magazine](https://visualstudiomagazine.com/articles/2024/01/25/copilot-research.aspx)

  [奇客Solidot | GitHub Copilot 降低了代码质量和可维护性](https://www.solidot.org/story?sid=77243)

- 2024-03 ["Davin" AI programmer finetunes LLM autonomously : r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/comments/1bczirs/davin_ai_programmer_finetunes_llm_autonomously/)

  [AI 程序员 Devin 卧底工作群修 bug！和 CTO 聊技术，网友：顶级码农水平 - IT之家](https://www.ithome.com/0/756/254.htm)

- 2024-04 [Debunking Devin: "First AI Software Engineer" Upwork Lie Exposed \[video\] | Hacker News](https://news.ycombinator.com/item?id=40008109)

  [世界首个 AI 程序员 Devin 视频竟造假？博主逐帧解析，Devin 代码任务完成很糟糕 - IT之家](https://www.ithome.com/0/761/728.htm)

- 2024-04 [Copilot vs Codeium vs 通义灵码 vs ... - 开发调优 - LINUX DO](https://linux.do/t/topic/59167)

  > GitHub Copilot > Baidu Comate > 阿里通义灵码/Codeium > Fitten Code/华为 CodeArts Snap/讯飞 iFlyCode

- 2024-07 [不懂就问，国产的代码补全工具，腾讯 AI 助手，通义灵码等，那些比较好？ - 资源荟萃 - LINUX DO](https://linux.do/t/topic/128221)

  > 我因为最近接了不少中小单子（都是一些学生和后台系统）在我综合体验下来，根据：提示速度/毫秒耗时、上下文提示是否符号我当前要写的代码、跨页智能提示、注释生成代码（包含简单和业务相关封装的代码等），这些条件下，下面是我一个大概的真实排名。
  > 
  > GithubCopilot 和 Codeium 全程都是挂香港代理，延迟都在150~5000ms，根据代理而定，我的代理平均延迟在110ms左右。
  > 
  > 国内模型都是不挂代理，我人在深圳，根据我的抓包API延迟在50~1500ms之间，FittenCode最快平均延迟在 80~120ms 之间，但是错误率还好，比起通义灵码、腾讯AI助手、文心快码还是好上很多的，通义灵码有一个本地和云端，强烈建议只用云端就行，本地就是一坨Shift！还不如Idea自带 = =
  > 
  > \[排名\] 平均周期轮询使用在 3~5天/个
  > 1、GithubCopilot
  > 2、Codeium
  > 3、FittenCode | CodeGeex
  > 4、通义灵码
  > 5、Tencent Cloud AI Code Assistant(腾讯AI助手) | Baidu Comate(文心快码)

  > 我在用通义灵码，vs code的插件做的还行

  > copilot和通义用的VSCode插件。  
  > 代码补全方面差别不大；  
  > 代码解释方面通义说的不明白，copilot能稍微机灵点。  
  > 最近尝试了网页版的腾讯元宝，代码解释和文档总结能力挺强的，希望能有VSCode插件可用，不然总是要复制粘贴。

- 2024-08 [怎么给免费的编程助手 Codeium 加速？？ - V2EX](https://www.v2ex.com/t/1061940)

  > 试过 Qwen 、Fitten Code 、Codeium 和两个月的 Github Copilot ，前面三个我感觉速度其实都还行，不过质量只有 Copilot 比较好。可能是楼主网络有一定延迟？或者现在用的人多了压力太大了  
  > 我自己现在找了个折中的方案，用 Continue.dev 搭配自己买 API ，用的是国内 Deepseek 的 API ，速度很快，一天花费大概 1 元

- 2024-09 [Effects of Gen AI on High Skilled Work: Experiments with Software Developers | Hacker News](https://news.ycombinator.com/item?id=41465081)

  > I think that what the MBAs miss is this phenomena of *overconstraint*. Once you have separate the generic role of "developer" into "developer, operations, and security", you've likely specified all sorts of details about *how* those roles need to be done. When you combine them back into DevSecOps, all the details remain, and you have one person doing 3x the work instead of one person doing the work 3x more efficiently. To effectively go backwards, you have to *relax constraints*, and let that one person exercise their judgment about *how* to do the job.
  > 
  > A corollary is that org size can never decrease, only increase. As more employees are hired, jobs become increasingly specialized. Getting rid of them means that *that job function is simply not performed*, because at that level of specialization, the other employees cannot simply adjust their job descriptions to take on the new responsibilities. You have to throw away the old org and start again with a new, small org, which is why the whole private equity / venture capital / startup ecosystem exists. This is also [Gall's Law](https://en.wikipedia.org/wiki/John_Gall_(author)#Gall's_law) exists.

- 2024-09 [Devs gaining little (if anything) from AI coding assistants : r/programming](https://www.reddit.com/r/programming/comments/1fs72u2/devs_gaining_little_if_anything_from_ai_coding/)
- 2024-10 [AI is an impediment to learning web development | Hacker News](https://news.ycombinator.com/item?id=41757711)

  > LLMs don't require you to form a mental model and allow you to skip to the end result, but in turn you won't *have* a mental model when you actually need one (for example, when you need to verify that your LLM has architected the code in a reasonable way).

- 2024-10 [The Art of Programming and Why I Won't Use LLM : r/programming](https://www.reddit.com/r/programming/comments/1g2n812/the_art_of_programming_and_why_i_wont_use_llm/)
- 2024-10 [Google CEO says more than a quarter of the company's new code is created by AI | Hacker News](https://news.ycombinator.com/item?id=41991291)
- 2024-11 [用 Cursor 写稍微冷门一点的技术栈代码简直是灾难，我用它写 Avalonia 的代码，新版本的写法在它看来是错的，老是给我改成旧版本甚至隔壁 MAUI 和 Uno 的写法导致编译不通过 - V2EX](https://www.v2ex.com/t/1089638)

  > 唯一有用的场合大概就是网上有现成代码的特别普遍的需求+非常热门且 breaking changes 非常少的框架

  > 用了两个月还是卸载了，体感其实除了 JS / TS / Python ，其他都一般。
  > 
  > Python 的话如果项目用的库版本新点，很多代码产生出来根本无法执行。很多时候要自己在模型结构上做算法创新，那么补全就全是错的。
  > 
  > 写 Rust ，Go ，Lua 的时候各种 Tab 误判，很容易 Tab 误触乱飞，整体下来补全体验甚至不如 Copilot 。  
  > 只能大概用用 Chat ，不过这和自己给到 GPT ，给到 Claude 没啥区别，也就 diff 当前代码和 Chat 结果的代码比较方便，但这个其实用 avante.nvim 完全可以替代。唯一感觉比较特别的就是对项目整体的理解力，这个没有找到替代品。
  > 
  > Java 和 Kotlin 相对效果其实也还行，但是 VSCode 写 Java 和 IDEA 体验差太远了，无法说服自己脱离 IDEA 。