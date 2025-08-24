@echo off
set T_FILENAME="TR_Logical (USA).gbc"
set S_FILENAME="Logical (USA).gbc"
set SCRIPTNAME="logicalgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
