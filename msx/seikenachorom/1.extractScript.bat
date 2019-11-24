@echo off
set T_FILENAME="Seiken Acho (1985) (Ascii) (J).rom"
set SCRIPTNAME="seikenachorom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
