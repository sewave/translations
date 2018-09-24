@echo off
set T_FILENAME="TR_OutRun (W) [!].gen"
set SCRIPTNAME="outrunsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
