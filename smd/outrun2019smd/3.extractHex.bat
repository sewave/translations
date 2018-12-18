@echo off
set T_FILENAME="TR_OutRun 2019 (U) [!].gen"
set SCRIPTNAME="outrun2019smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
