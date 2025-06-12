# GUI Architectural Patterns
- [→Immediate mode](#immediate-mode)

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
  
  ![](https://web.archive.org/web/20240108213044if_/https://res.cloudinary.com/practicaldev/image/fetch/s--wnhmT4T0--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https:/thepracticaldev.s3.amazonaws.com/i/ukpejkp1tmzatyrgrjtr.png)

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

- [Model-view-update (MVU)](#model-view-update-mvu)

  ![](https://res.cloudinary.com/practicaldev/image/fetch/s--pfGYqFNK--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://github.com/dotnet/Comet/raw/dev/art/mvu-pattern.png)

- MVUX: [Bridging the Gap Between MVU and MVVM](https://platform.uno/blog/intro-mvux/)

  [MVUX Overview](https://platform.uno/docs/articles/external/uno.extensions/doc/Overview/Reactive/overview.html)

[MVWTF: Demystifying Architecture Patterns - DEV Community](https://dev.to/adammc331/mvwtf-demystifying-architecture-patterns-ap1)

[What is the actual difference between MVVM and MVC pattern in flutter : r/flutterhelp](https://www.reddit.com/r/flutterhelp/comments/17etao0/what_is_the_actual_difference_between_mvvm_and/)

## Model-view-update (MVU)
Model-view-update (MVU), The Elm Architecture

![](https://res.cloudinary.com/practicaldev/image/fetch/s--pfGYqFNK--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://github.com/dotnet/Comet/raw/dev/art/mvu-pattern.png)

- A simple directed loop, one way data flow
- Message passing (bindings / commands)
  - Events as messages/commands
    - Listening and message recognizing are separated
  - Defining a message enum for each view
    - Verbose, most messages only correspond to one event
- Redraw cost
  - Tree diffing
- vs. MVP?

  In MVU, model directly passes state to the view, bypassing the presenter in MVP.

[The Elm Architecture - An Introduction to Elm](https://guide.elm-lang.org/architecture/)

[MVU or MVVM with MAUI App ? – JM Parent](https://www.jmparent.com/2022/01/18/mvu-or-mvvm-with-maui-app/)

[Model-View-Update (MVU) – How Does It Work?](https://thomasbandt.com/model-view-update)

[Where is MVU? Tired of using old and unnecessarily verbose XAML · dotnet/maui · Discussion #12820](https://github.com/dotnet/maui/discussions/12820)

[MVU might not be what you think it is · Issue #118 · dotnet/maui](https://github.com/dotnet/maui/issues/118)
- [Microsoft's MVU Is Anything But MVU](https://web.archive.org/web/20200803212537/https://thomasbandt.com/microsoft-maui-mvu)

Implementations:
- [compio-rs/winio: Single-threaded asynchronous GUI runtime](https://github.com/compio-rs/winio)
  - Model: `&mut Self`
  - View: `init`, `start` (async), `render`
  - Update: `update` (async)
    - Defining a message enum for each view

## Immediate mode
[Wikipedia](https://en.wikipedia.org/wiki/Immediate_mode_(computer_graphics))

[Graphics: why immediate mode? - The Rust Programming Language Forum](https://users.rust-lang.org/t/graphics-why-immediate-mode/93356)

C++:
- [Dear ImGui: Bloat-free Graphical User interface for C++ with minimal dependencies](https://github.com/ocornut/imgui)

Rust:
- [egui: an easy-to-use immediate mode GUI in Rust that runs on both web and native](https://github.com/emilk/egui)
