@echo off
set T_FILENAME="Super Shadow of the Beast (U).smc"
set SCRIPTNAME="supershadowofthebeastsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
