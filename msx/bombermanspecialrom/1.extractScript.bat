@echo off
set T_FILENAME="Bomberman Special (1986) (Hudson) (J).rom"
set SCRIPTNAME="bombermanspecialrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
