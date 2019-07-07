@echo off
set harrver=1.5
title HARR - Hackey Admin Rights Request (ver. %harrver%)
set /p "prcesr="<"%~dp0HARR-prcesr.HARRset"
title HARR - %prcesr:.exe=% (ver. %harrver%)
goto errorcheck
:main
set temprand=%random%
set tempfold=%tmp%\%temprand%\
set temprcesr=%tmp%\%temprand%\%prcesr%
md "%tempfold%"
xcopy /y "%~dp0%prcesr%" "%tempfold%"
cd /d "%tempfold%"
(
echo @echo off
echo set Adminrequested=1
echo start cmd /c "%~1"
echo DEl /f /q "%%~s0"
echo Type nul ^> "%%~s0"
)>"%tempfold%adminrequestprocessing.cmd"
start "" "%temprcesr%"
echo on
@exit
:errorcheck
if "%~1"=="" (
echo ERROR CODE 1 -- No file to run.
echo:
echo see 'How to call' for more info.
goto nope
)
if not exist "%~dp0%prcesr%" (
echo CRITICAL ERROR CODE 2 -- the file defined in HARR-prcesr.HARRset does not exist.
echo:
echo see 'How to use in other projects?' for more info.
goto nope
)
if /I "%~1"=="-h" goto read
if /I "%~1"=="-help" goto read
if /I "%~1"=="-r" goto read
if /I "%~1"=="-read" goto read
if "%~1"=="/?" goto read
goto main
:nope
echo no admin rights requistred, there was an error.
echo ----------------------------------------------------------
type HARR-Readme.txt
echo on
@exit /b
:read
echo ----------------------------------------------------------
type HARR-Readme.txt
echo on
