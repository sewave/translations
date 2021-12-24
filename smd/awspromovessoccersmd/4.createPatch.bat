@echo off
set T_FILENAME="TR_AWS Pro Moves Soccer (USA).md"
set S_FILENAME="AWS Pro Moves Soccer (USA).md"
set SCRIPTNAME="awspromovessoccersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
