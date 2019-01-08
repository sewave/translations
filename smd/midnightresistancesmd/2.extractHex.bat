@echo off
set T_FILENAME="TR_Midnight Resistance (U) [!].gen"
set SCRIPTNAME="midnightresistancesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
