# Factories
1. 工厂可以创建失败，比如返回 nullptr
2. 一个工厂可以产生不同类型的对象
3. 工厂内部可以实现缓存机制
4. 工厂可以用来实现 Singleton
5. 相比于 Builder，工厂一般一次就能创建好对象

## Fatory method
静态方法
```cpp
struct Point
{
protected:
  Point(const float x, const float y)
    : x{x}, y{y} {}
public:
  static Point NewCartesian(float x, float y)
  {
    return { x,y };
  }
  static Point NewPolar(float r, float theta)
  {
    return { r * cos(theta), r * sin(theta) };
  }
  // other members here
};
```

## Factory
静态类
```cpp
struct Point
{
  float x, y;
  friend class PointFactory;
private:
  Point(float x, float y) : x(x), y(y){}
};
```
```cpp
struct PointFactory
{
  static Point NewCartesian(float x, float y)
  {
    return Point{ x,y };
  }
  static Point NewPolar(float r, float theta)
  {
    return Point{ r*cos(theta), r*sin(theta) };
  }
};
```
```cpp
auto my_point = PointFactory::NewCartesian(3, 4);
```

## Inner factory
取决于编码喜好

> The reason why inner factories exist is because inner classes can 
access the outer class’ private members and, conversely, an outer class 
can access an inner class’ private members.

```cpp
struct Point
{
private:
  Point(float x, float y) : x(x), y(y) {}
  struct PointFactory
  {
  private:
    PointFactory() {}
  public:
    static Point NewCartesian(float x, float y)
    {
      return { x,y };
    }
    static Point NewPolar(float r, float theta)
    {
      return{ r*cos(theta), r*sin(theta) };
    }
  };
public:
  float x, y;
  static PointFactory Factory;
};
```
```cpp
auto pp = Point::Factory.NewCartesian(2, 3);
```
```cpp
auto pp = Point::Factory::NewCartesian(2, 3);
```
问题在于，相比外部类不仅要多输两个冒号，还至少要多按一个 F 和 Tab。

## Abstract factory
虚工厂

```cpp
struct HotDrink
{
  virtual void prepare(int volume) = 0;
};
```
```cpp
struct Tea : HotDrink
{
  void prepare(int volume) override
  {
    cout << "Take tea bag, boil water, pour " << volume << 
    "ml, add some lemon" << endl;
  }
};
```
```cpp
struct HotDrinkFactory
{
  virtual unique_ptr<HotDrink> make() const = 0;
};

struct CoffeeFactory : HotDrinkFactory
{
  unique_ptr<HotDrink> make() const override
  {
    return make_unique<Coffee>();
  }
}

class DrinkFactory
{
  map<string, unique_ptr<HotDrinkFactory>> hot_factories;
public:
  DrinkFactory()
  {
    hot_factories["coffee"] = make_unique<CoffeeFactory>();
    hot_factories["tea"] = make_unique<TeaFactory>();
  }
  unique_ptr<HotDrink> make_drink(const string& name)
  {
    auto drink = hot_factories[name]->make();
    drink->prepare(200); // oops!
    return drink;
  }
};
```
```cpp
unique_ptr<HotDrink> make_drink(string type)
{
  unique_ptr<HotDrink> drink;
  if (type == "tea")
  {
    drink = make_unique<Tea>();
    drink->prepare(200);
  }
  else
  {
   drink = make_unique<Coffee>();
   drink->prepare(50);
  }
  return drink;
}
```

## Functional factory
```cpp
class DrinkWithVolumeFactory
{
  map<string, function<unique_ptr<HotDrink>()>> factories;
public:
  DrinkWithVolumeFactory()
  {
    factories["tea"] = [] {
      auto tea = make_unique<Tea>();
      tea->prepare(200);
      return tea;
    }; // similar for Coffee
  }
};

inline unique_ptr<HotDrink>
DrinkWithVolumeFactory::make_drink(const string& name)
{
  return factories[name]();
}
```