@echo off
set T_FILENAME="TR_Punch-Out!! (USA).nes"
set S_FILENAME="Punch-Out!! (USA).nes"
set SCRIPTNAME="punchoutnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
