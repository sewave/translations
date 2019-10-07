@echo off
set T_FILENAME="TR_Lemmings (E) [!].sms"
set SCRIPTNAME="lemmingssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 539C:800
pause
