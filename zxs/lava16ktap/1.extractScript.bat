@echo off
set T_FILENAME="Lava16K.tap"
set SCRIPTNAME="lava16ktap"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
