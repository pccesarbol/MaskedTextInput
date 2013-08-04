@echo off

if not exist bin\MaskedTextInput.swc call buildSWC.bat

if NOT (%SDKDIR%)==() goto :checkCompc

regedit /e fwpath.txt "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Adobe Flex Builder 2"
for /f " tokens=2 delims==" %%f  in ('find "FrameworkPath" fwpath.txt') do set SDKDIR=%%f
del fwpath.txt

if (%SDKDIR%)==() set SDKDIR="C:\Program Files\Adobe\Flex Builder 2\Flex SDK 2"

:checkCompc

if exist "%SDKDIR:"=%\bin\compc.exe" goto :build
echo Error: Could not find compc.exe, please install FlexBuilder or set SDKDIR environment variable to flex framework directory.
exit /b

:build


echo Building MaskedTextInputExplorer sample...
"%SDKDIR:"=%\bin\mxmlc.exe" -library-path+="bin\MaskedTextInput.swc" -file-specs samples\MaskedTextInputExplorer\MaskedTextInputExplorer.mxml


echo Building Reservation sample...
"%SDKDIR:"=%\bin\mxmlc.exe" -library-path+="bin\MaskedTextInput.swc" -file-specs samples\Reservation\Reservation.mxml