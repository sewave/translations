@echo off
set T_FILENAME="TR_Chuck Rock II - Son of Chuck (E) [!].sms"
set SCRIPTNAME="chuckrockiisonofchucksms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
