@echo off
set T_FILENAME="TR_Palamedes (U) [!].nes"
set SCRIPTNAME="palamedesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FB80:100,86B0:40,EF80:10,85D0:40
pause
