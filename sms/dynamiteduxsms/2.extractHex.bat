@echo off
set T_FILENAME="TR_Dynamite Dux (Europe, Brazil).sms"
set SCRIPTNAME="dynamiteduxsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
