@echo off
set T_FILENAME="TR_Switchblade II (USA, Europe).lnx"
set SCRIPTNAME="switchbladeiilnx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 210F:20
pause
