# C++
## xeus-cling
[jupyter-xeus/xeus-cling: Jupyter kernel for the C++ programming language](https://github.com/jupyter-xeus/xeus-cling)

[Interactive Workflows for C++ with Jupyter | by QuantStack | Jupyter Blog](https://blog.jupyter.org/interactive-workflows-for-c-with-jupyter-fe9b54227d92)

```sh
conda create -n cling
conda activate cling
conda install jupyter xeus-cling -c conda-forge
jupyter kernelspec list
```
```sh
conda activate cling & jupyter notebook
```

[Introduction — xeus-cling documentation](https://xeus-cling.readthedocs.io/en/latest/)
- [Build options](https://xeus-cling.readthedocs.io/en/latest/build_options.html)
	- `#pragma cling add_include_path("inc_directory")`
	- `#pragma cling add_library_path("lib_directory")`
	- `#pragma cling load("libname")`
- [Magic commands](https://xeus-cling.readthedocs.io/en/latest/magics.html)
	- `%%executable`
	- `%%file`
	- `%timeit`
- [Displaying rich content](https://xeus-cling.readthedocs.io/en/latest/rich_display.html)
- [Inline documentation](https://xeus-cling.readthedocs.io/en/latest/inline_help.html)

缺陷：
- 没有自动完成
- 出现大量编译错误时会很卡

## Cling
[root-project/cling: The cling C++ interpreter](https://github.com/root-project/cling)

## ROOT
[root/bindings/jupyroot at master · root-project/root](https://github.com/root-project/root/tree/master/bindings/jupyroot)
