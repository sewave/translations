@echo off
set T_FILENAME="Baby's Day Out (USA) (Proto) (February, 1995).md"
set SCRIPTNAME="babysdayoutsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
