@echo off
set T_FILENAME="TR_Xenon 2 (E) (Image Works) [!].sms"
set SCRIPTNAME="xenon2sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
