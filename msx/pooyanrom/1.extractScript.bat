@echo off
set T_FILENAME="Pooyan (1985) (Hudson) (J).rom"
set SCRIPTNAME="pooyanrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
