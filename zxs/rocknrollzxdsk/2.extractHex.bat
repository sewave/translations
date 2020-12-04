@echo off
set T_FILENAME="TR_Rock 'n Roll - Side A.dsk"
set SCRIPTNAME="rocknrollzxdsk"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
