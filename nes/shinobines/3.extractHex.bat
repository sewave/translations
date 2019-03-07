@echo off
set T_FILENAME="TR_Shinobi (Tengen) [!].nes"
set SCRIPTNAME="shinobines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 38110:30,38610:60,3A050:10,3F910:500,200C0:50,201F0:20,270C0:50,280C0:50,2A0C0:50,
pause
