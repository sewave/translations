@echo off
set T_FILENAME="TR_Shockman (USA).pce"
set S_FILENAME="Shockman (USA).pce"
set SCRIPTNAME="shockmanpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
