@echo off
set T_FILENAME="TR_F15 City War (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="f15citywarnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F230:30,F8E0:10
pause
