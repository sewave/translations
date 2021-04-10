@echo off
set T_FILENAME="TR_Castle of Illusion Starring Mickey Mouse (USA, Brazil).sms"
set SCRIPTNAME="castleofillusionstarringmickeymousesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F44E:30,2F5C1:30,2F42E:8,2F5B1:8
pause
