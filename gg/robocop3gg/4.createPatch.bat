@echo off
set T_FILENAME="TR_RoboCop 3 (World).gg"
set S_FILENAME="RoboCop 3 (World).gg"
set SCRIPTNAME="robocop3gg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
