@echo off
set T_FILENAME="TR_Double Dragon 3 (U) [!].gb"
set SCRIPTNAME="doubledragon3gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
