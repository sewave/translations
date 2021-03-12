@echo off
set T_FILENAME="TR_OldTower128.tap"
set SCRIPTNAME="oldtower128tap"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4387:60
pause
