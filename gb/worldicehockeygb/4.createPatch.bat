@echo off
set T_FILENAME="TR_World Ice Hockey (Japan).gb"
set S_FILENAME="World Ice Hockey (Japan).gb"
set SCRIPTNAME="worldicehockeygb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
