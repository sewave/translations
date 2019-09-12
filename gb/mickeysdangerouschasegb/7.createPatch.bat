@echo off
set T_FILENAME="TR_Mickey's Dangerous Chase (U) [!].gb"
set S_FILENAME="Mickey's Dangerous Chase (U) [!].gb"
set SCRIPTNAME="mickeysdangerouschasegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
