@echo off
set T_FILENAME="TR_Tinhead (U) [!].gen"
set SCRIPTNAME="tinheadssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
