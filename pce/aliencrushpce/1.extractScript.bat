@echo off
set T_FILENAME="Alien Crush (U).pce"
set SCRIPTNAME="aliencrushpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
