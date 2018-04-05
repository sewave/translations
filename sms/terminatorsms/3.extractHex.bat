@echo off
set T_FILENAME="TR_Terminator, The (E) [!].sms"
set SCRIPTNAME="terminatorsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3FAE3:A0
pause
