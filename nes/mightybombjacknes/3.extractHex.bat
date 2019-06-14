@echo off
set T_FILENAME="TR_Mighty Bomb Jack (U) [!].nes"
set SCRIPTNAME="mightybombjacknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
