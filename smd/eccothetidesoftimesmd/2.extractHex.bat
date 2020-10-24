@echo off
set T_FILENAME="TR_Ecco - The Tides of Time (USA).md"
set SCRIPTNAME="eccothetidesoftimesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
