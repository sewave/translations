@echo off
set T_FILENAME="TR_Mr. Nutz (U).smc"
set SCRIPTNAME="mrnutzsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 18240:100
pause
