@echo off
set T_FILENAME="TR_Sky Jaguar - Konami (1984) [RC-721] [GoodMSX] [2099].rom"
set SCRIPTNAME="skyjaguarkonamirom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
