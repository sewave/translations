@echo off
set T_FILENAME="TR_Super Monaco GP (U) [!].sms"
set SCRIPTNAME="supermonacogpsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 90C0:300,1018B:300,20480:100
pause
