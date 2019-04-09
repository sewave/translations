@echo off
set T_FILENAME="TR_Hogan's Alley (W) [!].nes"
set SCRIPTNAME="hogansalleynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5150:10,51F0:60,4F10:100,4AF0:30
pause
