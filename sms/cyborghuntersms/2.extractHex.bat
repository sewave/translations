@echo off
set T_FILENAME="TR_Cyborg Hunter (USA, Europe).sms"
set SCRIPTNAME="cyborghuntersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8018:38
pause
