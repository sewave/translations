@echo off
set T_FILENAME="TR_Violent Soldier (Japan).pce"
set SCRIPTNAME="violentsoldierpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
