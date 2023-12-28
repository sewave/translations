@echo off
set T_FILENAME="TR_RoboCop (USA).nes"
set S_FILENAME="RoboCop (USA).nes"
set SCRIPTNAME="robocopnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
