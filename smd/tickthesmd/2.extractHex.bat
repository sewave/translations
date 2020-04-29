@echo off
set T_FILENAME="TR_Tick, The (U) [!].gen"
set SCRIPTNAME="tickthesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
