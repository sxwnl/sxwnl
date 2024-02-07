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
注意: 许老师只更新到了5.09版本，5.10版本截止到目前从未正式发布即[农历论坛](http://bbs.nongli.net/dispbbs_2_14995.html)里未发布, 另一个预览网站: [有趣天文奇观-寿星天文历](https://interesting-sky.china-vo.org/sxwnl.html) ；
该版本是在CSDN上发现的, 经过对比发现和5.09差异不大, 只有2个公式的改动, 引用农历论坛的回帖;  
```
解味石头
Post By：2020/4/25 18:37:00

寿星万年历V5.10（单文件版）：https://pan.baidu.com/s/1ZbJ_Ta1ysvigKcnagJKV9Q  提取码：sg5y

在网上找到的510版，修改了日食的 直线到太阳中心的最小值 的计算方法。

（2018.11.25原）509：

  this.sun_s = sunShengJ(jd-dt_T(jd)+L/pi2,L,fa,-1) +dt_T(jd); //日出,统一用力学时
  this.sun_j = sunShengJ(jd-dt_T(jd)+L/pi2,L,fa, 1) +dt_T(jd); //日没,统一用力学时

  //求直线到太阳中心的最小值
  var x=G.x+dt2*v, y=G.y+dt2*u, rmin=Math.sqrt(x*x+y*y);
  
对以上这四行进行了修改。

(2020.02.15修订后)510：

  //求直线到太阳中心的最小值

  var maxsf = 0,
  maxjd = jd,
  rmin, ls;
  for (i = -30; i < 30; i += 6) {
   tt = jd + i / 86400;
   this.secXY(tt, L, fa, high, g);
   ls = (g.mr + g.sr - Math.sqrt(g.x * g.x + g.y * g.y)) / g.sr / 2;
   if (ls > maxsf) maxsf = ls, maxjd = tt;
  }
  jd = maxjd;
  for (i = -5; i < 5; i += 1) {
   tt = jd + i / 86400;
   this.secXY(tt, L, fa, high, g);
   ls = (g.mr + g.sr - Math.sqrt(g.x * g.x + g.y * g.y)) / g.sr / 2;
   if (ls > maxsf) maxsf = ls, maxjd = tt;
  }
  jd = maxjd;
  this.secXY(jd, L, fa, high, G);
  rmin = Math.sqrt(G.x * G.x + G.y * G.y);

  this.sun_s = sunShengJ(jd-dt_T(jd)+L/pi2,L,fa,-1) +dt_T(jd); //日出,统一用力学时
  this.sun_j = sunShengJ(jd-dt_T(jd)+L/pi2,L,fa, 1) +dt_T(jd); //日没,统一用力学时
```

```
gaolijun1981
Post By：2020/8/13 8:49:00
eph0.js

老版本：var l1=1287104.79305  +  129596581.0481*t -  0.5532*t2 - 0.000136*t3 - 0.00001149*t4;
新版本：var l1=1287104.79305  +  129596581.0481*t -  0.5532*t2 + 0.000136*t3 - 0.00001149*t4;
```

作者: 许剑伟  
邮箱: xunmeng04#163.com (#->@)  
更新地址 http://bbs.nongli.net/dispbbs_2_14995.html   
最后更新日期: 2018-11-16  

说明文档: https://sxwnl.github.io/src/readme.htm  
关于版权: https://sxwnl.github.io/src/sm1.htm#copyright

>本程序是开源的，你可以使用其中的任意部分代码，但不得随意修改“天文算法(eph.js)”及“农历算法(lunar.js)中古历部分的数据及算法”。一旦修改可能影响万年历的准确性，如果你对天文学不太了解而仅凭对历法的热情，请不要对此做任何修改，以免弄巧成拙。

>如果在你自己开发的软件中使用了本程序的核心算法及数据，你可以在你的软件中申明“数据或算法来源于寿星天文历”，也可以不申明，但不可以申明为它其它来源。如有异义，可与我共内探讨。

*感谢许剑伟老师对天文历法知识的分享*
