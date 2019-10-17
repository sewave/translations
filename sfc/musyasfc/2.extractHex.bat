@echo off
set T_FILENAME="TR_Musya (U) [!].smc"
set SCRIPTNAME="musyasfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 60A00:300,61200:100,C6FD7:100
pause
