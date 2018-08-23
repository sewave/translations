@echo off
set T_FILENAME="TR_Double Dragon (U) [!].nes"
set SCRIPTNAME="doubledragonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3CD80:30,3DD80:30,30E70:40
pause
