# Code Review
[^v2ex-200729][^v2ex-221223][^v2ex-200413][^v2ex-201114]

- 中国公司的 code review 现状是怎样的？

  大部分公司都有 code review 的流程，但执行质量存在很大差异，有些只是走个流程，有些只是修正下代码风格，少部分则会严格 review。[^v2ex-companies][^v2ex-bytedance]

- Code review 可以增强代码质量，增强团队的沟通和对相互代码的理解。
- Code review 很费时间，可能会导致开发效率低下。
  - 工期不够充足是不严格进行 code review 的一大原因。
  - 相互阻塞在耗费的时间中占有不小的比重。
- 预先商定设计方案能够减小 code review 的成本，但商定技术方案同样需要耗费时间。
- 一次提交改动较多时 code review 会比较困难，修正的成本相比多次迭代提交也会更大，应当尽量减小和拆分改动。[^eng-practices-small-cls][^v2ex-loc]
  - 每次提交最好控制在几百行之内，不要涉及太多文件。
  - 提交不应破坏 build，否则会影响其他人的开发。[^eng-practices-small-cls-break]
- 开发者的代码审美通常会存在差异，导致许多人不喜欢被 review，但也有部分人将 review 当作学习的机会。[^eng-practices-handling-comments]
  - 当 code review 双方的话语权不对等时，review 的目的可能会变成“应该按我的想法来实现”。这会导致双方出现冲突，或者 reviewee 对 reviewer 百依百顺。
  - 应当减少对他人代码的改动。
  - 制定统一的 code review 标准有助于减少冲突。
- 从 code review 中总结出编码规范有助于提升开发效率。
- 让 reviewer 承担连带责任能够提高 review 的质量。

[^v2ex-companies]: [大部分公司应该都不会 code review 吧？ - V2EX](https://www.v2ex.com/t/741378)
[^v2ex-200729]: [谈谈 code review？ - V2EX](https://www.v2ex.com/t/693941#r_9312797)
[^v2ex-221223]: [如何看待 code review ？ - V2EX](https://www.v2ex.com/t/904191)
[^v2ex-200413]: [大家在公司都是怎么组织 Code Review 的？高效吗？有效果吗？ - V2EX](https://www.v2ex.com/t/661918)
[^v2ex-201114]: [我发现 我公司的 review code 这个目的已经变质了。 - V2EX](https://www.v2ex.com/t/725245)
[^v2ex-loc]: [关于 CodeReview，和团队小伙伴产生了分歧。 - V2EX](https://www.v2ex.com/t/841208)
[^v2ex-bytedance]: [惊讶！连字节这样的宇宙厂都不怎么做 CodeReview 和单测？ - V2EX](https://www.v2ex.com/t/875493)

## Information sources
- [Code review - Wikipedia](https://en.wikipedia.org/wiki/Code_review)
- [Google Engineering Practices Documentation | eng-practices](https://google.github.io/eng-practices/)
  - [谷歌工程实践 | 云原生资料库](https://lib.jimmysong.io/eng-practices/)

[^eng-practices-small-cls]: [Small CLs | eng-practices](https://google.github.io/eng-practices/review/developer/small-cls.html)
[^eng-practices-small-cls-break]: [Small CLs | eng-practices](https://google.github.io/eng-practices/review/developer/small-cls.html#break)
[^eng-practices-handling-comments]: [How to handle reviewer comments | eng-practices](https://google.github.io/eng-practices/review/developer/handling-comments.html)