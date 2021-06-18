@echo off
set T_FILENAME="TR_Goonies II, The (USA).nes"
set SCRIPTNAME="gooniesiithenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 16B69:10,16C4B:10
pause
