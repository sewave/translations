@echo off
set T_FILENAME="TR_Yie Ar Kung-Fu (Taiwan) (Unl).sg"
set SCRIPTNAME="yiearkungfusg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
