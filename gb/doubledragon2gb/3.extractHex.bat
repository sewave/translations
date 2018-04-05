@echo off
set T_FILENAME="TR_Double Dragon 2 (U) [!].gb"
set SCRIPTNAME="doubledragon2gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
