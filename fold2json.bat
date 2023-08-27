@echo off
setlocal enabledelayedexpansion

REM set "pathto=hede/album_37"
REM set "pathto=game/trail3d"
REM set "pathto=game/trail2d"
REM set "pathto=game/swinebeta"
 set "pathto=game/swinebeta2/scr"
set "folderPath=.\public\%pathto%"
set "jsonOutput=output.json"
set "jsonContent=["
set "firstItem=true"

echo Folder: %pathto%
pause

for %%i in ("%folderPath%\*.*") do (
    set "filePath=%%~i"
    set "fileName=%%~nxi"
    set "relativePath=!filePath:%folderPath%\=!"

        if !firstItem! == false set "jsonContent=!jsonContent!,"
        set "jsonContent=!jsonContent!{"
        set "jsonContent=!jsonContent!"name":"!fileName!","
        set "jsonContent=!jsonContent!"url":"/%pathto%/!relativePath!""
        set "jsonContent=!jsonContent!}"
        set "firstItem=false"
)

set "jsonContent=!jsonContent!]"

echo !jsonContent! > "%jsonOutput%"

echo JSON file created: %jsonOutput%

endlocal
pause