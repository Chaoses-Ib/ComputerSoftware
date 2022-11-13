# IPython Constructs
[Python vs IPython — IPython documentation](https://ipython.readthedocs.io/en/stable/interactive/python-ipython-diff.html)

## Accessing help
Show help about an object:
```python
object?
```
```python
?object
```

Show more information and possibly the source code:
```python
object??
```
```python
??object
```

Looking for an object with wildcards:
```python
*name*?
```

## Shell assignment
Execute a command:
```python
!pwd
```
```
pwd!
```
支持 variable expansion，`$variable` 或 `{variable}`。

## Magics
```python
%magic
```
```python
%%magic
multiple
lines
```
[Built-in magic commands — IPython documentation](https://ipython.readthedocs.io/en/stable/interactive/magics.html)