@echo off
set T_FILENAME="Championship Lode Runner (1985) (Sony) (J).rom"
set SCRIPTNAME="championshiploderunnerrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
