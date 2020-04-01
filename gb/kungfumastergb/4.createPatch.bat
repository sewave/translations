@echo off
set T_FILENAME="TR_Kung-Fu Master (U).gb"
set S_FILENAME="Kung-Fu Master (U).gb"
set SCRIPTNAME="kungfumastergb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
