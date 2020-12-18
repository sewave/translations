@echo off
set T_FILENAME="TR_Alien 3 (USA).nes"
set S_FILENAME="Alien 3 (USA).nes"
set SCRIPTNAME="alien3nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
