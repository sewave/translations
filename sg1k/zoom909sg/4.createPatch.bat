@echo off
set T_FILENAME="TR_Zoom 909 (Taiwan).sg"
set S_FILENAME="Zoom 909 (Taiwan).sg"
set SCRIPTNAME="zoom909sg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
