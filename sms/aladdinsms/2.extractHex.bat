@echo off
set T_FILENAME="TR_Aladdin (Europe, Brazil).sms"
set SCRIPTNAME="aladdinsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 27E21:40,8160:20,8580:40
pause
