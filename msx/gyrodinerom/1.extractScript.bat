@echo off
set T_FILENAME="Gyrodine (1986) (Taito) (J).rom"
set SCRIPTNAME="gyrodinerom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
