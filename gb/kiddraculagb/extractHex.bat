@echo off 
set T_FILENAME="TR_Kid Dracula (U) [!].gb"
set SCRIPTNAME="kiddraculagb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
