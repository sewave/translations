@echo off
set T_FILENAME="TR_Super Castlevania IV (USA).sfc"
set SCRIPTNAME="supercastlevaniaivsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
