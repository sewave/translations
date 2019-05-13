@echo off
set T_FILENAME="TR_Task Force Harrier EX (U) [!].bin"
set S_FILENAME="Task Force Harrier EX (U) [!].bin"
set SCRIPTNAME="taskforceharrierexsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
