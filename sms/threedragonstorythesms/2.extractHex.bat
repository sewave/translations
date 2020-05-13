@echo off
set T_FILENAME="TR_Three Dragon Story, The (K).sms"
set SCRIPTNAME="threedragonstorythesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4E68:8,4EA0:8
pause
