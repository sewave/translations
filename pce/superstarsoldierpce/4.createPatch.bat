@echo off
set T_FILENAME="TR_Super Star Soldier (U).pce"
set S_FILENAME="Super Star Soldier (U).pce"
set SCRIPTNAME="superstarsoldierpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
