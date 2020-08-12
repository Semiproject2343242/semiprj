rem @echo off
@echo ========================================
@echo       Backup
@echo ========================================

if exist .\exclude.lst set exclude=/exclude:.\exclude.lst

xcopy %exclude% /sedchriy *.* C:\Users\jhkim6\Documents\GitHub\semiprj\KimJoongHyeon\BackUp\%Date%_NetBook_after

set exclude=
