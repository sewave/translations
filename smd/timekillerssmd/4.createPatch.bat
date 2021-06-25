@echo off
set T_FILENAME="TR_Time Killers (USA).md"
set S_FILENAME="Time Killers (USA).md"
set SCRIPTNAME="timekillerssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
