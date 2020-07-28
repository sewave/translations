@echo off
set T_FILENAME="TR_Xenon 2 - Megablast (U).gb"
set S_FILENAME="Xenon 2 - Megablast (U).gb"
set SCRIPTNAME="xenon2megablastgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
