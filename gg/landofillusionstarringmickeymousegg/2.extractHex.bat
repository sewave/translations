@echo off
set T_FILENAME="TR_Land of Illusion Starring Mickey Mouse (USA, Europe, Brazil) (En).gg"
set SCRIPTNAME="landofillusionstarringmickeymousegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
