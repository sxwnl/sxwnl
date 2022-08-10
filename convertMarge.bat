echo off

:: 临时目录
set OUT_DIR=out
if not exist "%OUT_DIR%" (
	md "%OUT_DIR%"
)

::指定起始文件夹
set DIR0=%cd%
set DIR=%DIR0%\src
for /R %DIR% %%f in (*.htm,*.js,*.bat) do (
    echo ..\out\%%~nf%%~xf
    if /i not "%%~nf"=="jsZip"   (
        .\convertcp.exe 65001 936 /i %DIR%\%%~nf%%~xf /o %OUT_DIR%\%%~nf%%~xf
    ) else (
        copy %DIR%\%%~nf%%~xf out\%%~nf%%~xf
    )
)

pushd %OUT_DIR%

call hebin.bat

:: 删除临时目录
echo 清理out目录
pushd %DIR0%
rd /q /s %OUT_DIR%

echo 合并完毕
pause