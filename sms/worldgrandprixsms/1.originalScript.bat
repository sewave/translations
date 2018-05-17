@echo off
set T_FILENAME="World Grand Prix (U) [!].sms"
set SCRIPTNAME="worldgrandprixsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
