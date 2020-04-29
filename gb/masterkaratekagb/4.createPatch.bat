@echo off
set T_FILENAME="TR_Master Karateka (Japan).gb"
set S_FILENAME="Master Karateka (Japan).gb"
set SCRIPTNAME="masterkaratekagb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
