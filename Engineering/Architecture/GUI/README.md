# GUI Architectural Patterns
- Model-view-controller (MVC, [Wikipedia](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller))

  The controller is responsible for:
  1. Handle user input
  2. Validate that input if necessary
  3. Pass that input into the model
  4. Pass that model reponse into the view

  ![](https://res.cloudinary.com/practicaldev/image/fetch/s--STiYr4TG--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/0o42x7ijrmr9noxcqyxk.png)

- Model-view-presenter (MVP, [Wikipedia](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93presenter))

  ![](https://res.cloudinary.com/practicaldev/image/fetch/s--BZHaH1My--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/15uwjej52fhhxzb1npxi.png)

- Model-view-viewmodel (MVVM, [Wikipedia](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93viewmodel))
  
  ![](https://res.cloudinary.com/practicaldev/image/fetch/s--wnhmT4T0--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/ukpejkp1tmzatyrgrjtr.png)

  Frameworks:
  - [XAML-based frameworks](https://github.com/Chaoses-Ib/.NET#gui)
    - Windows Presentation Foundation (WPF)
    - Universal Windows Platform (UWP)
    - Windows UI (WinUI)
    - Xamarin.Forms
      - Multi-platform App UI (MAUI)
    - Uno
    - Avalonia
  - [Vue.js](https://012.vuejs.org/guide/)
  - React

    [javascript - MVVM architectural pattern for a ReactJS application - Stack Overflow](https://stackoverflow.com/questions/51506440/mvvm-architectural-pattern-for-a-reactjs-application)

- Model-view-intent (MVI)

  ![](https://res.cloudinary.com/practicaldev/image/fetch/s--Xk9-Dois--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://thepracticaldev.s3.amazonaws.com/i/ynwdqq12l4bkfunntd87.png)

- Model-view-update (MVU)

  ![](https://res.cloudinary.com/practicaldev/image/fetch/s--pfGYqFNK--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://github.com/dotnet/Comet/raw/dev/art/mvu-pattern.png)

  [MVU or MVVM with MAUI App ? – JM Parent](https://www.jmparent.com/2022/01/18/mvu-or-mvvm-with-maui-app/)

  [Model-View-Update (MVU) – How Does It Work?](https://thomasbandt.com/model-view-update)

  [Where is MVU? Tired of using old and unnecessarily verbose XAML · dotnet/maui · Discussion #12820](https://github.com/dotnet/maui/discussions/12820)

  [MVU might not be what you think it is · Issue #118 · dotnet/maui](https://github.com/dotnet/maui/issues/118)

[MVWTF: Demystifying Architecture Patterns - DEV Community](https://dev.to/adammc331/mvwtf-demystifying-architecture-patterns-ap1)