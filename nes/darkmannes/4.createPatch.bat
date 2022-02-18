@echo off
set T_FILENAME="TR_Darkman (USA).nes"
set S_FILENAME="Darkman (USA).nes"
set SCRIPTNAME="darkmannes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
