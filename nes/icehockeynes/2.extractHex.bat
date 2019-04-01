@echo off
set T_FILENAME="TR_Ice Hockey (U) [!].nes"
set SCRIPTNAME="icehockeynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A000:10,9D80:10
pause
