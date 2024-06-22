@echo off
set T_FILENAME="TR_Alex Kidd in Miracle World (USA, Europe) (Rev 1).sms"
set SCRIPTNAME="alexkiddinmiracleworldsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
