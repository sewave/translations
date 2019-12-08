@echo off
set T_FILENAME="Goonies, The (1986) (Konami) (J).rom"
set SCRIPTNAME="gooniestherom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
