@echo off
set T_FILENAME="TR_Vapor Trail (U) [!].bin"
set S_FILENAME="Vapor Trail (U) [!].bin"
set SCRIPTNAME="vaportrailsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
