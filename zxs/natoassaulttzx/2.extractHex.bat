@echo off
set T_FILENAME="TR_Nato Assault.tzx"
set SCRIPTNAME="natoassaulttzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1D45:60,1E0D:20,A69B:B0,2015:10
pause
