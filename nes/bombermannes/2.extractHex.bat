@echo off
set T_FILENAME="TR_Bomberman (U) [!].nes"
set SCRIPTNAME="bombermannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5580:20
pause
