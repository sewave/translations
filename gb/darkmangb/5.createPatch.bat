@echo off
set T_FILENAME="TR_Darkman (U).gb"
set S_FILENAME="Darkman (U).gb"
set SCRIPTNAME="darkmangb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
