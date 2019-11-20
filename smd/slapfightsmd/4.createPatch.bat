@echo off
set T_FILENAME="TR_Slap Fight (J) [c][!].bin"
set S_FILENAME="Slap Fight (J) [c][!].bin"
set SCRIPTNAME="slapfightsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
