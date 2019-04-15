@echo off
set T_FILENAME="Zunou Senkan Galg (Japan).nes"
set SCRIPTNAME="zunousenkangalgnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
