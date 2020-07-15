@echo off
set T_FILENAME="TR_Faceball 2000 (Japan).gg"
set SCRIPTNAME="faceball2000gg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C050:20,C0A0:10,C1C0:40,C3B0:60
pause
