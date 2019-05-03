@echo off
set T_FILENAME="TR_Ecco - The Tides of Time (U) [!].gg"
set SCRIPTNAME="eccothetidesoftimegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F3F5:10
pause
