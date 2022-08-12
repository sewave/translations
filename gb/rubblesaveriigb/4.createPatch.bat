@echo off
set T_FILENAME="TR_Rubble Saver II (Japan).gb"
set S_FILENAME="Rubble Saver II (Japan).gb"
set SCRIPTNAME="rubblesaveriigb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
