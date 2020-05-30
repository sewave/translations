@echo off
set T_FILENAME="TR_Metal Masters (U).gb"
set S_FILENAME="Metal Masters (U).gb"
set SCRIPTNAME="metalmastersgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
