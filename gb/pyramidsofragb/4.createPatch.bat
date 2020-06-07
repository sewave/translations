@echo off
set T_FILENAME="TR_Pyramids of Ra (U).gb"
set S_FILENAME="Pyramids of Ra (U).gb"
set SCRIPTNAME="pyramidsofragb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
