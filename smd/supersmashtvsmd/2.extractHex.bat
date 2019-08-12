@echo off
set T_FILENAME="TR_Super Smash TV (UE) [!].bin"
set SCRIPTNAME="supersmashtvsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1388:40,1DE8:40
pause
