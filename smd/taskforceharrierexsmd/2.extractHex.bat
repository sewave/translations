@echo off
set T_FILENAME="TR_Task Force Harrier EX (U) [!].bin"
set SCRIPTNAME="taskforceharrierexsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
