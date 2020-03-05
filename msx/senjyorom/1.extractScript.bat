@echo off
set T_FILENAME="Senjyo (1984) (Sony) (J).rom"
set SCRIPTNAME="senjyorom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
