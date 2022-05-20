@echo off
set T_FILENAME="TR_Nether Earth.tzx"
set SCRIPTNAME="netherearthtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2ADF:18,2BD7:28
pause
