@echo off
set T_FILENAME="Youkai Club (Japan).nes"
set SCRIPTNAME="youkaiclubnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
