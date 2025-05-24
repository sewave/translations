@echo off
set T_FILENAME="TR_Boarder Zone (USA).gbc"
set S_FILENAME="Boarder Zone (USA).gbc"
set SCRIPTNAME="boarderzonegbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
