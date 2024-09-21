@echo off
set T_FILENAME="TR_Desert Strike - Return to the Gulf (Europe) (SGB Enhanced).gb"
set SCRIPTNAME="desertstrikereturntothegulfgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
