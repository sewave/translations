@echo off
set T_FILENAME="TR_Yogi Bear's Gold Rush (USA).gb"
set SCRIPTNAME="yogibearsgoldrushgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
