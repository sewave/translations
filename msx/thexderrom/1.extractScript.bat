@echo off
set T_FILENAME="Thexder (1986) (Gamearts) (J).rom"
set SCRIPTNAME="thexderrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
