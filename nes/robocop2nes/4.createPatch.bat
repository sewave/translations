@echo off
set T_FILENAME="TR_RoboCop 2 (USA) (Rev A).nes"
set S_FILENAME="RoboCop 2 (USA) (Rev A).nes"
set SCRIPTNAME="robocop2nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
