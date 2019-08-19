@echo off
set T_FILENAME="TR_Impossible Mission II (U) [!].nes"
set SCRIPTNAME="impossiblemissioniines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
