@echo off
set T_FILENAME="TR_Rockin' Kats (U) [!].nes"
set SCRIPTNAME="rockinkatsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3EAB0:10,3EE60:B0,3EF60:B0,284C0:200,281B0:200,286F0:20,210C0:50,2AF10:100,2B6B0:30
pause
