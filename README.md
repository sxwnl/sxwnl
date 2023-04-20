# sxwnl 寿星天文历(万年历) 5.10 原作者: 许剑伟
> 注意: 本项目打包合并仅限于Windows，其他操作系统可以直接浏览器打开
## 更新说明
2022-08-10:  
发现github会自动将windows CRLF保存为Unix的LF, 导致clone后无法执行convertMarge和hebin的bat脚本, 因此通过修改配置的方式将所有源文件重新保存为CRLF换行;
参考: https://github.com/cssmagic/blog/issues/22  
## 和原版差异
1. 编码不同, 原版采用GBK编码, 由于GitHub对于GBK不太友好, 故统一改为了UTF-8
2. 新增了编码转换工具和转码的脚本(QAIU编写), 因为改为UTF-8之后, 原作者的Jszip工具就失效了(windows下的JScript编写), 所以打包之前会再转为GBK.
## 打包/构建/预览
该项目没有真正意义上的打包, 构建工具可以将源码压缩合并成单个文件, 更加方便部署  
打包方法: 在windows下运行convertMarge.bat即可  
生成两个文件index.htm和indexmp.htm--web-PC和web-移动端; 只需要部署这两个文件, 也可以直接打开预览.  
非windows系统, 可以预览src/index.htm文件  
本页面预览地址: https://sxwnl.github.io/  

## 版权/来源和其他说明
注意: 截止到2022/08/25从未正式发布即[农历论坛](http://bbs.nongli.net/dispbbs_2_14995.html)里未发布, 有另一个预览网站: [有趣天文奇观-寿星天文历](https://interesting-sky.china-vo.org/sxwnl.html, 这个版本是在CSDN上发现的, 经过对比发现和5.09差异不大, 只有2个公式的改动);  
作者: 许剑伟; 
更新地址 http://bbs.nongli.net/dispbbs_2_14995.html 
最后更新日期: 2018-11-15  

说明文档: https://sxwnl.github.io/src/readme.htm  
关于版权: https://sxwnl.github.io/src/sm1.htm#copyright

>本程序是开源的，你可以使用其中的任意部分代码，但不得随意修改“天文算法(eph.js)”及“农历算法(lunar.js)中古历部分的数据及算法”。一旦修改可能影响万年历的准确性，如果你对天文学不太了解而仅凭对历法的热情，请不要对此做任何修改，以免弄巧成拙。

>如果在你自己开发的软件中使用了本程序的核心算法及数据，你可以在你的软件中申明“数据或算法来源于寿星天文历”，也可以不申明，但不可以申明为它其它来源。如有异义，可与我共内探讨。

*感谢许剑伟老师对天文历法知识的分享*
