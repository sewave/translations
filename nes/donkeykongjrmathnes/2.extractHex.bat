@echo off
set T_FILENAME="TR_Donkey Kong Jr. Math (U) [!].nes"
set SCRIPTNAME="donkeykongjrmathnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 58E0:30,5510:80
pause
