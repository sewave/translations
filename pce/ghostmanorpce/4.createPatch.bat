@echo off
set T_FILENAME="TR_Ghost Manor (USA).pce"
set S_FILENAME="Ghost Manor (USA).pce"
set SCRIPTNAME="ghostmanorpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
