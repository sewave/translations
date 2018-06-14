@echo off
set T_FILENAME="TR_Sparkster (U) [!].gen"
set SCRIPTNAME="sparkstersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
