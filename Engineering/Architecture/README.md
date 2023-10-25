# Software Architecture
[Wikipedia](https://en.wikipedia.org/wiki/Software_architecture)

**Software architecture** is the set of structures needed to reason about a software system and the discipline of creating such structures and systems.

## Architectural patterns
[Wikipedia](https://en.wikipedia.org/wiki/Architectural_pattern)

An **architectural pattern** is a general, reusable resolution to a commonly occurring problem in software architecture within a given context.

### Object-oriented programming
[Wikipedia](https://en.wikipedia.org/wiki/Object-oriented_programming)

- [General Responsibility Assignment Software Patterns](https://en.wikipedia.org/wiki/GRASP_(object-oriented_design))

- [Law of Demeter](https://en.wikipedia.org/wiki/Law_of_Demeter)

  > - Each unit should have only limited knowledge about other units: only units "closely" related to the current unit.
  > - Each unit should only talk to its friends; don't talk to strangers.
  > - Only talk to your immediate friends.

- [SOLID](https://en.wikipedia.org/wiki/SOLID)

  > - The **Single-responsibility principle**: "There should never be more than one reason for a class to change." In other words, every class should have only one responsibility.
  > - The **Open–closed principle**: "Software entities ... should be open for extension, but closed for modification."
  > - The **Liskov substitution principle**: "Functions that use pointers or references to base classes must be able to use objects of derived classes without knowing it." See also design by contract.
  > - The **Interface segregation principle**: "Clients should not be forced to depend upon interfaces that they do not use."
  > - The **Dependency inversion principle**: "Depend upon abstractions, \[not\] concretions."