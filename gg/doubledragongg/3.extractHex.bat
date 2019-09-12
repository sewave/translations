@echo off
set T_FILENAME="TR_Double Dragon (U) [!].gg"
set SCRIPTNAME="doubledragongg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
