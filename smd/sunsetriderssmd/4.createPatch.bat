@echo off
set T_FILENAME="TR_Sunset Riders (U) [!].bin"
set S_FILENAME="Sunset Riders (U) [!].bin"
set SCRIPTNAME="sunsetriderssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
