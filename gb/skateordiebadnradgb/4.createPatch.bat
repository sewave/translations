@echo off
set T_FILENAME="TR_Skate or Die - Bad 'N Rad (USA).gb"
set S_FILENAME="Skate or Die - Bad 'N Rad (USA).gb"
set SCRIPTNAME="skateordiebadnradgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
