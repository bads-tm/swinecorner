@echo off
setlocal enabledelayedexpansion

REM set "folderPath=.\public\game\trail3d"
set "folderPath=.\public\game\swinebeta"
set "jsonOutput=output.json"
set "jsonContent={"
set "firstItem=true"

for %%i in ("%folderPath%\*.*") do (
    if !firstItem! == false set "jsonContent=!jsonContent!,"
    set "jsonContent=!jsonContent!{"name":"%%~nxi"}"
    set "firstItem=false"
)

set "jsonContent=!jsonContent!}"

echo !jsonContent! > "%jsonOutput%"

echo JSON file created: %jsonOutput%

endlocal
