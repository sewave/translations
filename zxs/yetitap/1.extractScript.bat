@echo off
set T_FILENAME="YETI.TAP"
set SCRIPTNAME="yetitap"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
