@echo off
set T_FILENAME="TR_Ghost Lion (USA).nes"
set S_FILENAME="Ghost Lion (USA).nes"
set SCRIPTNAME="ghostlionnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
