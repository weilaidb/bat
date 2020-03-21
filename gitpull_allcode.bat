@echo off 
cd /d D:\Software\opengrok\opengrok_project\kernel_latest\
echo current dir:%cd%
echo =============current project list
for /D %%e in (*) do (@echo %cd%\%%e)
echo =============update projects
for /D %%e in (*) do (@cd /d %cd%\%%e & echo %%e & git pull)
REM sleep 5
REM pause
timeout /T 5 
