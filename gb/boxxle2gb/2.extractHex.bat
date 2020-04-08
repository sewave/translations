@echo off
set T_FILENAME="TR_Boxxle 2 (U) [!].gb"
set SCRIPTNAME="boxxle2gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
