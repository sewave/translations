@echo off
set T_FILENAME="TR_OldTower48.tap"
set SCRIPTNAME="oldtower48tap"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 400F:60
pause
