@echo off
set T_FILENAME="TR_Stormlord (U) [!].bin"
set S_FILENAME="Stormlord (U) [!].bin"
set SCRIPTNAME="stormlordsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
