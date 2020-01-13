:: Get current date time
@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
echo %mydate%
:: backup database
:: check OSQL.exe file under this folder C:\Program Files\Microsoft SQL Server\
cd C:\Program Files\Microsoft SQL Server\140\Tools\Binn\
OSQL.exe -E -Q "BACKUP DATABASE database TO DISK='C:\tmp\database%mydate%.bak'
