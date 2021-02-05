REM https://explainshell.com/explain?cmd=git+add+-A
REM https://medium.com/@adric/using-git-as-a-backup-tool-e56027f438c6

@echo off
for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set ldt=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2% %ldt:~8,2%:%ldt:~10,2%:%ldt:~12,6%
echo Local date is [%ldt%]
REM git.exe add -A
git.exe add .
REM git.exe commit -a -m "Backup [%ldt%]"
git.exe commit -m "Backup [%ldt%]"
REM git.exe push
git.exe push origin web-branch