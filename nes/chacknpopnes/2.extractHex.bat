@echo off
set T_FILENAME="TR_Chack 'n Pop (J).nes"
set SCRIPTNAME="chacknpopnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5800:10,5900:10,5A00:10
pause
