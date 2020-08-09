rem @echo off
@echo ========================================
@echo       Backup
@echo ========================================

if exist .\exclude.lst set exclude=/exclude:.\exclude.lst

xcopy %exclude% /sedchriy *.* C:\Users\month\Documents\GitHub\semiprj\KimJoongHyeon\BackUp\%Date%Total

set exclude=
