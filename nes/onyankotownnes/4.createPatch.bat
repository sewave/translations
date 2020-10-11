@echo off
set T_FILENAME="TR_Onyanko Town (Japan).nes"
set S_FILENAME="Onyanko Town (Japan).nes"
set SCRIPTNAME="onyankotownnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
