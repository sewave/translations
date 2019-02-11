@echo off
set T_FILENAME="TR_Micro Machines (E) [!].sms"
set SCRIPTNAME="micromachinessms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
