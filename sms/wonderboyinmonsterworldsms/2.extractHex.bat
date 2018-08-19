@echo off
set T_FILENAME="TR_Wonder Boy in Monster World (E) [!].sms"
set SCRIPTNAME="wonderboyinmonsterworldsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
