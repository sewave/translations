@echo off
set T_FILENAME="Butamaru Pants (1983) (Hal) (J).rom"
set SCRIPTNAME="butamarupantsrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
