@echo off
set T_FILENAME="TR_Faceball 2000 (USA).gb"
set S_FILENAME="Faceball 2000 (USA).gb"
set SCRIPTNAME="faceball2000gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
