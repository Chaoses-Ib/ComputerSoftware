# Software Testing
[Wikipedia](https://en.wikipedia.org/wiki/Software_testing)

## Testing levels
### [Unit testing](https://en.wikipedia.org/wiki/Unit_testing)
> Unit testing refers to tests that verify the functionality of a specific section of code, usually at the function level. In an object-oriented environment, this is usually at the class level, and the minimal unit tests include the constructors and destructors.

### [Integration testing](https://en.wikipedia.org/wiki/Integration_testing)
> Integration testing is any type of software testing that seeks to verify the interfaces between components against a software design. Software components may be integrated in an iterative way or all together ("big bang"). Normally the former is considered a better practice since it allows interface issues to be located more quickly and fixed.

Types:
- Big-bang
- Mixed (sandwich)
- Risky-hardest
- Top-down
- Bottom-up
- [Regression testing](https://en.wikipedia.org/wiki/Regression_testing)

  > Regression testing focuses on finding defects after a major code change has occurred. Specifically, it seeks to uncover software regressions, as degraded or lost features, including old bugs that have come back. Such regressions occur whenever software functionality that was previously working correctly, stops working as intended. Typically, regressions occur as an unintended consequence of program changes, when the newly developed part of the software collides with the previously existing code. Regression testing is typically the largest test effort in commercial software development, due to checking numerous details in prior software features, and even new software can be developed while using some old test cases to test parts of the new design to ensure prior functionality is still supported.

### [System testing](https://en.wikipedia.org/wiki/System_testing)
> System testing tests a completely integrated system to verify that the system meets its requirements. For example, a system test might involve testing a login interface, then creating and editing an entry, plus sending or printing results, followed by summary processing or deletion (or archiving) of entries, then logoff.

- [Recovery testing](https://en.wikipedia.org/wiki/Recovery_testing)
- [Security testing](https://en.wikipedia.org/wiki/Security_testing)
- [Stress testing](https://en.wikipedia.org/wiki/Stress_testing)
- [Performance testing](https://en.wikipedia.org/wiki/Software_performance_testing)
- Deployment testing

### [Acceptance testing](https://en.wikipedia.org/wiki/Acceptance_testing)
Acceptance testing commonly includes the following four types:

- User acceptance testing (UAT)

- Operational acceptance testing (OAT)

- Contractual and regulatory acceptance testing

- Alpha and beta testing
  - Alpha testing

    Alpha testing is simulated or actual operational testing by potential users/customers or an independent test team at the developers' site. Alpha testing is often employed for off-the-shelf software as a form of internal acceptance testing before the software goes to beta testing.

  - Beta testing

    Beta testing comes after alpha testing and can be considered a form of external user acceptance testing. Versions of the software, known as beta versions, are released to a limited audience outside of the programming team known as beta testers. The software is released to groups of people so that further testing can ensure the product has few faults or bugs. Beta versions can be made available to the open public to increase the feedback field to a maximal number of future users and to deliver value earlier, for an extended or even indefinite period of time (perpetual beta).

## Testing approach
### Static, dynamic, and passive testing
- Static testing: reviews, walkthroughs, or inspections.
- Dynamic testing: executing programmed code with a given set of test cases.

Passive testing means verifying the system behavior without any interaction with the software product. Contrary to active testing, testers do not provide any test data but look at system logs and traces. They mine for patterns and specific behavior in order to make some kind of decisions. This is related to offline [runtime verification](https://en.wikipedia.org/wiki/Runtime_verification) and [log analysis](https://en.wikipedia.org/wiki/Log_analysis).

### The "box" approach
- [White-box testing](https://en.wikipedia.org/wiki/White-box_testing)

  > White-box testing (also known as clear box testing, glass box testing, transparent box testing, and structural testing) verifies the internal structures or workings of a program, as opposed to the functionality exposed to the end-user. In white-box testing, an internal perspective of the system (the source code), as well as programming skills, are used to design test cases. The tester chooses inputs to exercise paths through the code and determine the appropriate outputs.

- [Black-box testing](https://en.wikipedia.org/wiki/Black-box_testing)

  > Black-box testing (also known as functional testing) treats the software as a "black box," examining functionality without any knowledge of internal implementation, without seeing the source code. The testers are only aware of what the software is supposed to do, not how it does it. Black-box testing methods include: equivalence partitioning, boundary value analysis, all-pairs testing, state transition tables, decision table testing, fuzz testing, model-based testing, use case testing, exploratory testing, and specification-based testing.

- [Gray box testing](https://en.wikipedia.org/wiki/Gray_box_testing)

  > Grey-box testing involves having knowledge of internal data structures and algorithms for purposes of designing tests while executing those tests at the user, or black-box level. The tester will often have access to both "the source code and the executable binary." Grey-box testing may also include reverse engineering (using dynamic code analysis) to determine, for instance, boundary values or error messages. Manipulating input data and formatting output do not qualify as grey-box, as the input and output are clearly outside of the "black box" that we are calling the system under test. This distinction is particularly important when conducting integration testing between two modules of code written by two different developers, where only the interfaces are exposed for the test.

