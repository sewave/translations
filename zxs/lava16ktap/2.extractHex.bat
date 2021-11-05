@echo off
set T_FILENAME="TR_Lava16K.tap"
set SCRIPTNAME="lava16ktap"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
