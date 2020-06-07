@echo off
set T_FILENAME="TR_Last Starfighter, The (U) [!].nes"
set SCRIPTNAME="laststarfighterthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex D030:60,F030:60,B030:60,9030:80,
pause
