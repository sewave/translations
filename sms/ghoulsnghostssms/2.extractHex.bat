@echo off
set T_FILENAME="TR_Ghouls'n Ghosts (USA, Europe).sms"
set SCRIPTNAME="ghoulsnghostssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
