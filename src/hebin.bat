
cscript jsZip.js ..\index.htm index.htm tools.js+eph0.js+ephB.js+eph.js+JW.js+lunar.js+vml.js+help.js+page_gj.js 1000000 y

cscript jsZip.js ..\indexmp.htm indexmp.htm tools.js+eph0.js+ephB.js+eph.js+JW.js+lunar.js+vml.js+help.js+page_gj.js 1000000 y

..\convertcp.exe 936 65001 /i ..\index.htm /o ..\index
move ..\index ..\index.htm > nul
..\convertcp.exe 936 65001 /i ..\indexmp.htm /o ..\indexmp
move ..\indexmp ..\indexmp.htm > nul
