# [Bridge](https://en.wikipedia.org/wiki/Bridge_pattern)
![](https://upload.wikimedia.org/wikipedia/commons/f/fd/W3sDesign_Bridge_Design_Pattern_UML.jpg)

## The Pimpl idiom
`Person.h`:
```cpp
struct Person
{
  std::string name;
  void greet();

  Person();
  ~Person();

  class PersonImpl;
  PersonImpl *impl; // good place for gsl::owner<T>
};
```

`Person.cpp`:
```cpp
struct Person::PersonImpl
{
  void greet(Person* p);
}

Person::Person()
  : impl(new PersonImpl) {}

Person::~Person() { delete impl; }

void Person::greet()
{
  impl->greet(this);
}

void Person::PersonImpl::greet(Person* p)
{
  printf("hello %s", p->name.c_str());
}
```

There are three advantages to this approach:
- A larger proportion of the class implementation is actually hidden. If your `Person` class required a rich API full of `private`/`protected` members, you’d be exposing all those details to your clients, even if they could never access those members due to `private`/`protected` access modifiers. With Pimpl, they can only be given the public interface.

- Modifying the data members of the hidden Impl class does not affect binary compatibility.

- The header file only needs to include the header files needed for the declaration, not the implementation. For example, if Person requires a private member of type `vector<string>`, you would be forced to `#include` both `<vector>` and `<string>` in the `Person.h` header (and this is transitive, so anyone using `Person.h` would be including them too). With the Pimpl idiom, this can be done in the `.cpp` file instead.

## Bridge
```cpp
// Bridge
struct Renderer
{
  virtual void render_circle(float x, float y, float 
radius) = 0;
};

struct VectorRenderer : Renderer
{
  void render_circle(float x, float y, float radius) override
  {
    cout << "Rasterizing circle of radius " << radius << 
endl;
  }
};

struct RasterRenderer : Renderer
{
  void render_circle(float x, float y, float radius) 
override
  {
    cout << "Drawing a vector circle of radius " << radius
<< endl;
  }
};

struct Shape
{
protected:
  Renderer& renderer;
  Shape(Renderer& renderer) : renderer{ renderer } {}
public:
  virtual void draw() = 0;
  virtual void resize(float factor) = 0;
};

struct Circle : Shape
{
  float x, y, radius;

  void draw() override
  {
    renderer.render_circle(x, y, radius);
  }

  void resize(float factor) override
  {
    radius *= factor;
  }

 Circle(Renderer& renderer, float x, float y, float radius)
   : Shape{renderer}, x{x}, y{y}, radius{radius} {}
};
```
```cpp
RasterRenderer rr;
Circle raster_circle{ rr, 5,5,5 };
raster_circle.draw();
raster_circle.resize(2);
raster_circle.draw();
```
The Bridge is a rather simple concept, serving as a connector or glue, connecting two pieces together. The use of abstraction (interfaces) allows components to interact with one another without really being aware of the concrete implementations.

That said, the participants of the Bridge pattern do need to be aware of each other’s existence. Specifically, a `Circle` needs a reference to the `Renderer` and, conversely, the `Renderer` knows how to specifically draw circles (thus, the name of the `draw_circle()` member function). This can be contrasted with the Mediator pattern, which allows objects to communicate without being directly aware of each other.