@echo off
set T_FILENAME="TR_RoboCop 3 (USA).nes"
set S_FILENAME="RoboCop 3 (USA).nes"
set SCRIPTNAME="robocop3nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
