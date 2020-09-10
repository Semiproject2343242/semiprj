rem @echo off
@echo ========================================
@echo       Backup
@echo ========================================

if exist .\exclude.lst set exclude=/exclude:.\exclude.lst

xcopy %exclude% /sedchriy *.* D:\BACK_UP\%Date%

set exclude=
