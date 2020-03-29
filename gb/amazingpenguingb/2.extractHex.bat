@echo off
set T_FILENAME="TR_Amazing Penguin (UE) [!].gb"
set SCRIPTNAME="amazingpenguingb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
