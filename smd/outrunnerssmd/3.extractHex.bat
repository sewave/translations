@echo off
set T_FILENAME="TR_OutRunners (U) [!].gen"
set SCRIPTNAME="outrunnerssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
