@echo off
set T_FILENAME="TR_Batman (U) [!].gen"
set SCRIPTNAME="batmanssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
