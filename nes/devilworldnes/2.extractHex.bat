@echo off
set T_FILENAME="TR_Devil World (E) [!].nes"
set SCRIPTNAME="devilworldnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 50F0:100,5430:80
pause
