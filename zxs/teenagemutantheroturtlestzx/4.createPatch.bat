@echo off
set T_FILENAME="TR_Teenage Mutant Hero Turtles.tzx"
set S_FILENAME="Teenage Mutant Hero Turtles.tzx"
set SCRIPTNAME="teenagemutantheroturtlestzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
