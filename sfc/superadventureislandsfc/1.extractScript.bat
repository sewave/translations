@echo off
set T_FILENAME="Super Adventure Island (USA).sfc"
set SCRIPTNAME="superadventureislandsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
