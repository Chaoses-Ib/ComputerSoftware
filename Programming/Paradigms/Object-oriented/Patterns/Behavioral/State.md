# [State](https://en.wikipedia.org/wiki/State_pattern)
There are, fundamentally, two ways[^modern]:
- States are actual classes with behaviors, and these behaviors switch the actual state from one to another.
- States and transitions are just enumerations. We have a special component called a state machine that performs the actual transitions.

Both of these approaches are viable, but it’s really the second approach that is the most common.

## State-driven state transitions
![](https://upload.wikimedia.org/wikipedia/commons/e/ec/W3sDesign_State_Design_Pattern_UML.jpg)

```cpp
class LightSwitch
{
  State *state;
public:
  LightSwitch()
  {
    state = new OffState();
  }
  void set_state(State* state)
  {
    this->state = state;
  }

  void on() { state->on(this); }
  void off() { state->off(this); }
};

struct State
{
  virtual void on(LightSwitch *ls)
  {
    cout << "Light is already on\n";
  }
  virtual void off(LightSwitch *ls)
  {
    cout << "Light is already off\n";
  }
};

struct OnState : State
{
  OnState() { cout << "Light turned on\n"; }
  void off(LightSwitch* ls) override;
};

struct OffState : State
{
  OffState() { cout << "Light turned off\n"; }
  void on(LightSwitch* ls) override;
};

void OnState::off(LightSwitch* ls)
{
  cout << "Switching light off...\n";
  ls->set_state(new OffState());
  delete this;
} // same for OffState::on
```
```cpp
LightSwitch ls; // Light turned off
ls.on();        // Switching light on...
                // Light turned on
ls.off();       // Switching light off...
                // Light turned off
ls.off();       // Light is already off
```

## Handmade state machine
```cpp
enum class State
{
  off_hook,
  connecting,
  connected,
  on_hold,
  on_hook
};

enum class Trigger
{
  call_dialed,
  hung_up,
  call_connected,
  placed_on_hold,
  taken_off_hold,
  left_message,
  stop_using_phone
};

map<State, vector<pair<Trigger, State>>> rules;

rules[State::off_hook] = {
  {Trigger::call_dialed, State::connecting},
  {Trigger::stop_using_phone, State::on_hook}
};

rules[State::connecting] = {
  {Trigger::hung_up, State::off_hook},
  {Trigger::call_connected, State::connected}
};
// more rules here

State currentState{ State::off_hook },
exitState{ State::on_hook };

while (true)
{
  cout << "The phone is currently " << currentState << endl;
select_trigger:
  cout << "Select a trigger:" << "\n";

  int i = 0;
  for (auto item : rules[currentState])
  {
    cout << i++ << ". " << item.first << "\n";
  }

  int input;
  cin >> input;
  if (input < 0 || (input+1) > rules[currentState].size())
  {
    cout << "Incorrect option. Please try again." << "\n";
    goto select_trigger;
  }

  currentState = rules[currentState][input].second;
  if (currentState == exitState) break;
}
```

## State machines with Boost.MSM
```cpp
struct PhoneStateMachine : state_machine_def<PhoneStateMachine>
{
  bool angry{ false };
}

struct OffHook : state<> {};
struct Connecting : state<>
{
  template <class Event, class FSM>
  void on_entry(Event const& evt, FSM&)
  {
    cout << "We are connecting..." << endl;
  }
  // also on_exit
};
// other states omitted

struct PhoneBeingDestroyed
{
  template <class EVT, class FSM, class SourceState, class 
TargetState>
  void operator()(EVT const&, FSM&, SourceState&, 
TargetState&)
  {
    cout << "Phone breaks into a million pieces" << endl;
  }
};

struct CanDestroyPhone
{
  template <class EVT, class FSM, class SourceState, class 
TargetState>
  bool operator()(EVT const&, FSM& fsm, SourceState&, 
TargetState&)
  {
    return fsm.angry;
  }
};

// The source state, the transition, the target state, an optional action to execute, an optional guard condition
struct transition_table : mpl::vector <
  Row<OffHook, CallDialed, Connecting>,
  Row<Connecting, CallConnected, Connected>,
  Row<Connected, PlacedOnHold, OnHold>,
  Row<OnHold, PhoneThrownIntoWall, PhoneDestroyed,
      PhoneBeingDestroyed, CanDestroyPhone>
> {};

typedef OffHook initial_state;

template <class FSM, class Event>
void no_transition(Event const& e, FSM&, int state)
{
  cout << "No transition from state " << state_names[state]
    << " on event " << typeid(e).name() << endl;
}

msm::back::state_machine<PhoneStateMachine> phone;

info(); // The phone is currently off hook
phone.process_event(CallDialed{}); // We are connecting...
info(); // The phone is currently connecting
phone.process_event(CallConnected{});
info(); // The phone is currently connected
phone.process_event(PlacedOnHold{});
info(); // The phone is currently on hold
 8
phone.process_event(PhoneThrownIntoWall{});
// Phone breaks into a million pieces

info(); // The phone is currently destroyed

phone.process_event(CallDialed{});
// No transition from state destroyed on event struct CallDialed
```

There’s a lot more to state machines than that. For example, 
many libraries support the idea of *hierarchical* state machines: for 
example, a state of `Sick` can contain many different substates such as `Flu` or `Chickenpox`. If you are in state `Flu`, you are also assumed to be in the state `Sick`.


[^modern]: Design Patterns in Modern C++