@echo off
set T_FILENAME="TR_Kid Niki (J).gb"
set S_FILENAME="Kid Niki (J).gb"
set SCRIPTNAME="kidnikigb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
