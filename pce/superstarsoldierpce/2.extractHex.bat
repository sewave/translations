@echo off
set T_FILENAME="TR_Super Star Soldier (U).pce"
set SCRIPTNAME="superstarsoldierpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
