# Python: [IPython](https://github.com/ipython/ipython)
[Integrating your objects with IPython --- IPython 8.19.0 documentation](https://ipython.readthedocs.io/en/stable/config/integrating.html)
- [python - How to show PIL Image in ipython notebook - Stack Overflow](https://stackoverflow.com/questions/26649716/how-to-show-pil-image-in-ipython-notebook)

`DisplayHandle.update()` doesn't work with HTML in VS Code?

[python - ipython notebook clear cell output in code - Stack Overflow](https://stackoverflow.com/questions/24816237/ipython-notebook-clear-cell-output-in-code)
```python
from IPython.display import clear_output

for i in range(10):
    clear_output(wait=True)
    print("Hello World!")
```