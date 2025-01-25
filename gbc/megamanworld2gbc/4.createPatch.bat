@echo off
set T_FILENAME="TR_Mega Man World 2.gb"
set S_FILENAME="Mega Man II (USA).gb"
set SCRIPTNAME="megamanworld2gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
