@echo off
set T_FILENAME="TR_Hurricanes (Europe).gg"
set S_FILENAME="Hurricanes (Europe).gg"
set SCRIPTNAME="hurricanesgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
