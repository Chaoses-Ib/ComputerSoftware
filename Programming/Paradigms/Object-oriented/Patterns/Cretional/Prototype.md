# Prototype
> Most of object construction happens using, ahem, constructors. But if you’ve got an object configured already, why not simply copy that object instead of creating an identical one?

## Ordinary duplication
直接复制
```cpp
struct Address
{
  string street, city;
  int suite;
}
struct Contact
{
  string name;
  Address address;
}
```
```cpp
// here is the prototype:
Contact worker{"", Address{"123 East Dr", "London", 0}};
// make a copy of prototype and customize it
Contact john = worker;
john.name = "John Doe";
john.address.suite = 10;
```

## Duplication via copy construction
含有指针
```cpp
struct Contact
{
  string name;
  Address* address;
}
```
```cpp
Contact(const Contact& other)
  : name{other.name},
    address{ new Address{*other.address} }
  {}
Address(const string& street, const string& city, const int 
suite)
  : street{street},
    city{city},
    suite{suite}
  {}
```
```cpp
Contact worker{"", new Address{"123 East Dr", "London", 0}};
Contact john{worker}; // or: Contact john = worker;
john.name = "John";
john.suite = 10;
```
要实现复制构造和 `operator=`，不仅繁琐，还可能忘记实现。

另一个选项是使用 `clone()`

## Serialization
`Boost.Serialization`

```cpp
struct Address
{
  string street;
  string city;
  int suite;
private:
  friend class boost::serialization::access;
  template<class Ar> void serialize(Ar& ar, const unsigned 
int version)
  {
    ar & street;
    ar & city;
    ar & suite;
  }
}
```
```cpp
auto clone = [](const Contact& c)
{
  // 1. Serialize the contact
  ostringstream oss;
  boost::archive::text_oarchive oa(oss);
  oa << c;
  string s = oss.str();
  // 2. Deserialize the contact
  istringstream iss(oss.str());
  boost::archive::text_iarchive ia(iss);
  Contact result;
  ia >> result;
  return result;
};
```
```cpp
Contact jane = clone(john);
jane.name = "Jane"; // and so on
```
有额外开销，但同时也拥有了序列化的能力

## Prototype factory
```cpp
Contact main{ "", new Address{ "123 East Dr", "London", 0 } };
Contact aux{ "", new Address{ "123B East Dr", "London", 0 } };
```
```cpp
struct EmployeeFactory
{
  static Contact main;
  static Contact aux;
  static unique_ptr<Contact> NewMainOfficeEmployee(string 
name, int suite)
  {
    return NewEmployee(name, suite, main);
  }
  static unique_ptr<Contact> NewAuxOfficeEmployee(string 
name, int suite)
  {
    return NewEmployee(name, suite, aux);
  }
private:
  static unique_ptr<Contact> NewEmployee(
    string name, int suite, Contact& proto)
  {
    auto result = make_unique<Contact>(proto);
    result->name = name;
    result->address->suite = suite;
    return result;
  }
};
```
```cpp
auto john = EmployeeFactory::NewAuxOfficeEmployee("John Doe", 123);
auto jane = EmployeeFactory::NewMainOfficeEmployee("Jane Doe", 125);
```
用 Factory 可以防止漏赋值