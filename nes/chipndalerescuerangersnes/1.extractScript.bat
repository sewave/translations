@echo off
set T_FILENAME="Chip 'n Dale - Rescue Rangers (USA).nes"
set SCRIPTNAME="chipndalerescuerangersnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
