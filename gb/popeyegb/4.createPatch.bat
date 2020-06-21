@echo off
set T_FILENAME="TR_Popeye (Japan).gb"
set S_FILENAME="Popeye (Japan).gb"
set SCRIPTNAME="popeyegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
