@echo off
title Upload Any Project to GitHub

echo -------------------------------------
set /p folder="Enter full path of your project folder: "
cd /d "%folder%"

echo -------------------------------------
git init
git add .

set /p message="Enter your commit message: "
git commit -m "%message%"

set /p repo="Enter your GitHub repository URL (e.g. https://github.com/YourUsername/YourRepo.git): "

git remote add origin %repo%
git branch -M main
git push -u origin main

echo -------------------------------------
echo ✅ Project successfully pushed to GitHub!
pause
