@echo off
set T_FILENAME="TR_Ninja Gaiden (USA).nes"
set S_FILENAME="Ninja Gaiden (USA).nes"
set SCRIPTNAME="ninjagaidennes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
