@echo off 
set T_FILENAME="TR_Robocop versus The Terminator (U) [!].gg"
set SCRIPTNAME="rbcvstrmgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
