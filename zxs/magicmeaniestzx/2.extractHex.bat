@echo off
set T_FILENAME="TR_Magic Meanies.tzx"
set SCRIPTNAME="magicmeaniestzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 38C:10
pause
