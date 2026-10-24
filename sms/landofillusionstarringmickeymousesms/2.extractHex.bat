@echo off
set T_FILENAME="TR_Land of Illusion Starring Mickey Mouse (Europe, Brazil) (En).sms"
set SCRIPTNAME="landofillusionstarringmickeymousesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
