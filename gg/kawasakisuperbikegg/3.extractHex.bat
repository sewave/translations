@echo off
set T_FILENAME="TR_Kawasaki Superbike Challenge (U) [!].gg"
set SCRIPTNAME="kawasakisuperbikegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
