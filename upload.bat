@echo off
color 1f
title Git File Uploader Bot
set /p dir=Give Location Of Uploading Directory: 
echo.
echo Uploading Directory:  %dir%
echo.
set /p rme=Write Your Readme.md Here In One Line: 
echo.
echo Readme.md:  %rme%
echo.
set /p com=Write Your Commit Message Here: 
echo.
echo Commit Message:  %com%
echo.
set /p remurl=Give Your Remote URL: 
echo.
echo Remote Url:  %remurl%
echo.
set /p branch=Set Your Git Branch: 
cd %dir%
echo # %rme% >> README.md
git init
git add .
git commit -m "%com%"
git branch -M %branch%
git remote add origin %remurl%
git push -u origin %branch%
echo.
echo.
echo Done Uploading !!!
pause >nul
start %remurl%