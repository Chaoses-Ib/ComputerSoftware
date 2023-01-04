# [Source Insight](https://www.sourceinsight.com/)
Supported languages: C/C++, C#, Java, Objective-C.

Features:
- Project Symbols
- Auto Definitions
- Auto References
- Call graphs
- Class inheritance diagrams
- Overview Scroller
  - Boundaries of functions
- Highlights
- Bookmarks

## Symbol databases
- Quick browsing for member names
  
  If enabled, you only need to type the structure and class member names in order to perform partial matches on their names. However, the symbol index size and memory usage can increase by a factor of two or more. This option is recommended if you are using an object-oriented language primarily, so that you can find member functions and variables without having to type in the class name too.
- Quick browsing for symbol name fragments
  
  If enabled, you only need to type one or two name fragments of symbol names in order to perform partial matching on their names. However, the symbol index size and memory usage can increase by a factor of four or more. By indexing name fragments, you can use name fragment matching to quickly find symbols, even if you don't know what letters the symbol names begin with.

Synchronizing: [source insight 代码跳转时出现 symbol not found 解决办法 - 系统更新中的博客](https://blog.csdn.net/qq_39687342/article/details/115537128)

## Examples
### Windows XP SP1
有两个文件会导致导入卡死：
- `admin\wmi\wbem\adapters\oledb\adoscripts\demo1\adovbs.asp`
- `admin\wmi\wbem\adapters\oledb\adoscripts\demo1\adovbs.htm`

两个 quick browsing 都不开是 2.27 GiB，开了 symbol name fragments 后是 6.77 GiB，再开 member names 后是 6.82 GiB。