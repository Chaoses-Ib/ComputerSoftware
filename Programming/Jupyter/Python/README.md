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

## Memory management
- `display()` an object may make IPython hold some references to it.
  - Normal classes displayed as `str` will not.
  - `PIL.Image.Image` will.

    [Auto Queue - Issue #48 - Chaoses-Ib/ComfyScript](https://github.com/Chaoses-Ib/ComfyScript/issues/48)
  - Can be cleared by `%reset -f out`
    - `%xdel` does not work
  - `weakref.proxy()` does not work, at least for `Image`. The references are retrieved through its members.

- Showing an object by putting it the last line of a cell will make IPython and *Jupyter Notebook* hold some references to it.
  - There is no API to clear the references held by Jupyter Notebook.

[Python Garbage Collection sometimes not working in Jupyter Notebook - Stack Overflow](https://stackoverflow.com/questions/49515085/python-garbage-collection-sometimes-not-working-in-jupyter-notebook)
> There are a number of issues at play here. The first is that IPython (what Jupyter uses behind the scenes) keeps additional references to objects when you see something like `Out[67]`. In fact you can use that syntax to recall the object and do something with it. eg. `str(Out[67])`. The second problem is that Jupyter seems to be keeping its own reference of output variables, so only a full reset of IPython will work. But that's not much different to just restarting the notebook.

[Python memory management in Jupyter Notebook](https://mikulskibartosz.name/python-memory-management-in-jupyter-notebook)

[magic command reset is not working - Issue #13087 - ipython/ipython](https://github.com/ipython/ipython/issues/13087)

[Prevent ipython from storing outputs in Out variable - Stack Overflow](https://stackoverflow.com/questions/37808904/prevent-ipython-from-storing-outputs-in-out-variable)

[Completely disable IPython output caching - Stack Overflow](https://stackoverflow.com/questions/20814887/completely-disable-ipython-output-caching)
- ```sh
  echo "__builtin__._ = True" > ~/.config/ipython/profile_default/startup/00-disable-history.py
  ```