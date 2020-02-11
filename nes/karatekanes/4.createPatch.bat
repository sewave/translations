@echo off
set T_FILENAME="TR_Karateka (Japan).nes"
set S_FILENAME="Karateka (Japan).nes"
set SCRIPTNAME="karatekanes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
