@echo off
set T_FILENAME="TR_Tecmo World Cup (USA).md"
set S_FILENAME="Tecmo World Cup (USA).md"
set SCRIPTNAME="tecmoworldcupsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
