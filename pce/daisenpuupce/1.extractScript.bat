@echo off
set T_FILENAME="Daisenpuu (Japan).pce"
set SCRIPTNAME="daisenpuupce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
