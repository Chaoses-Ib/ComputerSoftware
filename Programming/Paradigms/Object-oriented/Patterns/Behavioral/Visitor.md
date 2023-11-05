# [Visitor](https://en.wikipedia.org/wiki/Visitor_pattern)
Once you’ve got a hierarchy of types, unless you have access to the source code, it is impossible to add a function to each member of the hierarchy. This is a problem that requires some advance planning, and gives birth to the Visitor pattern.

Approaches:

- Intrusive: adding a virtual method to every single object in the hierarchy. Possible (assuming you have access to source code) but breaks OCP.
- Reflective: adding a separate visitor that requires no changes to the objects; uses `dynamic_cast` whenever runtime dispatch is needed.
- Classic (double dispatch): the entire hierarchy does get modified, but just once and in a very generic way. Each element of the hierarchy learns to `accept()` a visitor. We then subclass the visitor to enhance the hierarchy’s functionality in all sorts of directions.

  ![](https://upload.wikimedia.org/wikipedia/commons/0/00/W3sDesign_Visitor_Design_Pattern_UML.jpg)

The Visitor appears quite often in tandem with the Interpreter pattern: having interpreted some textual input and transformed it into object-oriented structures, we need to, for example, render the abstract syntax tree in a particular way. Visitor helps propagate an `ostringstream` (or similar object) throughout the entire hierarchy and collate the data together.

```cpp
struct Expression
{
  // nothing here (yet)
};

struct DoubleExpression : Expression
{
  double value;
  explicit DoubleExpression(const double value)
    : value{value} {}
};

struct AdditionExpression : Expression
{
  Expression *left, *right;

  AdditionExpression(Expression* const left, 
Expression* const right)
    : left{left}, right{right} {}

  ~AdditionExpression()
  {
    delete left; delete right;
  }
};
```

## Intrusive visitor
```cpp
struct Expression
{
  virtual void print(ostringstream& oss) = 0;
};

struct AdditionExpression : Expression
{
  Expression *left, *right;
  ...
  void print(ostringstream& oss) override
  {
    oss << "(";
    left->print(oss);
    oss << "+";
    right->print(oss);
    oss << ")";
  }
};

auto e = new AdditionExpression{
  new DoubleExpression{1},
  new AdditionExpression{
    new DoubleExpression{2},
    new DoubleExpression{3}
  }
};
```
```cpp
ostringstream oss;
e->print(oss);
cout << oss.str() << endl; // prints (1+(2+3))
```

## Reflective printer
```cpp
struct Expression
{
  virtual ~Expression() = default;
};

struct ExpressionPrinter
{
  void print(DoubleExpression *de, ostringstream& oss) const
  {
    oss << de->value;
  }
  void print(AdditionExpression *ae, ostringstream& oss) const
  {
    oss << "(";
    print(ae->left, oss);
    oss << "+";
    print(ae->right, oss);
    oss << ")";
  }
};

struct ExpressionPrinter
{
  void print(Expression *e)
  {
    if (auto de = dynamic_cast<DoubleExpression*>(e))
    {
      oss << de->value;
    }
    else if (auto ae = dynamic_cast<AdditionExpression*>(e))
    {
      oss << "(";
      print(ae->left, oss);
      oss << "+";
      print(ae->right, oss);
      oss << ")";
    }
  }

  string str() const { return oss.str(); }
private:
  ostringstream oss;
};

auto e = new AdditionExpression{
  new DoubleExpression{ 1 },
  new AdditionExpression{
    new DoubleExpression{ 2 },
    new DoubleExpression{ 3 }
  }
};
```
```cpp
ExpressionPrinter ep;
ep.print(e);
cout << ep.str() << endl; // prints "(1+(2+3))"
```

## Dispatch
```cpp
struct Stuff {}
struct Foo : Stuff {}
struct Bar : Stuff {}

void func(Foo* foo) {}
void func(Bar* bar) {}

Foo *foo = new Foo;
func(foo); // ok

Stuff *stuff = new Foo;
func(stuff); // oops!
```
```cpp
struct Stuff {
  virtual void call() = 0;
}
struct Foo : Stuff {
  void call() override { func(this); }
}
struct Bar : Stuff {
  void call() override { func(this); }
}

void func(Foo* foo) {}
void func(Bar* bar) {}

Stuff *stuff = new Foo;
stuff->call(); // effectively calls func(stuff);
```

## Classic visitor
![](https://upload.wikimedia.org/wikipedia/commons/0/00/W3sDesign_Visitor_Design_Pattern_UML.jpg)

The “classic” implementation of the Visitor design pattern uses double 
dispatch. There are conventions as to what the visitor member functions 
are called:
- Member functions of the visitor are typically called `visit()`.
- Member functions implemented throughout the hierarchy are typically called `accept()`.

```cpp
struct Expression
{
  virtual void accept(ExpressionVisitor *visitor) = 0;
};

void accept(ExpressionVisitor* visitor) override
{
  visitor->visit(this);
}

struct ExpressionVisitor
{
  virtual void visit(DoubleExpression* de) = 0;
  virtual void visit(AdditionExpression* ae) = 0;
};

struct ExpressionPrinter : ExpressionVisitor
{
  ostringstream oss;
  string str() const { return oss.str(); }
  void visit(DoubleExpression* de) override;
  void visit(AdditionExpression* ae) override;
};

void ExpressionPrinter::visit(AdditionExpression* ae)
{
  oss << "(";
  ae->left->accept(this);
  oss << "+";
  ae->right->accept(this);
  oss << ")";
}
```
```cpp
auto e = new AdditionExpression{
  // as before
};
ostringstream oss;
ExpressionPrinter ep;
ep.visit(e);
cout << ep.str() << endl; // (1+(2+3))
```

Implement an additional visitor:
```cpp
struct ExpressionEvaluator : ExpressionVisitor
{
  double result;
  void visit(DoubleExpression* de) override;
  void visit(AdditionExpression* ae) override;
};

void ExpressionEvaluator::visit(DoubleExpression* de)
{
  result = de->value;
}

void ExpressionEvaluator::visit(AdditionExpression* ae)
{
  ae->left->accept(this);
  auto temp = result;
  ae->right->accept(this);
  result += temp;
}
```
```cpp
auto e = new AdditionExpression{ /* as before */ };
ExpressionPrinter printer;
ExpressionEvaluator evaluator;
printer.visit(e);
evaluator.visit(e);
cout << printer.str() << " = " << evaluator.result << endl;
// prints "(1+(2+3)) = 6"
```

## Acyclic visitor
Now is a good time to mention that there are actually two strains, if you will, of the Visitor design pattern. They are

- Cyclic Visitor, which is based on function overloading. Due to the cyclic dependency between the hierarchy (which must be aware of the visitor’s type) and the visitor (which must be aware of every class in the hierarchy), the use of the approach is limited to stable hierarchies that are infrequently updated.

- Acyclic Visitor, which is based on RTTI. The advantage here is the absence of limitations on visited hierarchies but, as you may have guessed, there are performance implications.

```cpp
template <typename Visitable>
struct Visitor
{
  virtual void visit(Visitable& obj) = 0;
};

struct VisitorBase // marker interface
{
  virtual ~VisitorBase() = default;
};

struct Expression
{
  virtual ~Expression() = default;

  virtual void accept(VisitorBase& obj)
  {
    using EV = Visitor<Expression>;
    if (auto ev = dynamic_cast<EV*>(&obj))
      ev->visit(*this);
  }
};

struct ExpressionPrinter : VisitorBase,
                           Visitor<DoubleExpression>,
                           Visitor<AdditionExpression>
{
  void visit(DoubleExpression &obj) override;
  void visit(AdditionExpression &obj) override;

  string str() const { return oss.str(); }
private:
  ostringstream oss;
};
```

## Variants and `std::visit`
```cpp
variant<string, int> house;
// house = "Montefiore Castle";
house = 221;
```
```cpp
struct AddressPrinter
{
  void operator()(const string& house_name) const {
    cout << "A house called " << house_name << "\n";
  }

  void operator()(const int house_number) const {
    cout << "House number " << house_number << "\n";
  }
};
```
```cpp
AddressPrinter ap;
std::visit(ap, house); // House number 221
```
```cpp
std::visit([](auto& arg) {
  using T = decay_t<decltype(arg)>;

  if constexpr (is_same_v<T, string>)
  {
    cout << "A house called " << arg.c_str() << "\n";
  }
  else
  {
    cout << "House number " << arg << "\n";
  }
}, house);
```