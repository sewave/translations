@echo off
set T_FILENAME="TR_Adventures of Lolo 2 (U) [!].nes"
set SCRIPTNAME="adventuresoflolo2nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9F60:10
pause
