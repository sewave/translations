@echo off
set T_FILENAME="TR_Biker Mice from Mars (USA).sfc"
set SCRIPTNAME="bikermicefrommarssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
