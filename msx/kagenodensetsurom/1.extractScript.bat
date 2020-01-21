@echo off
set T_FILENAME="Kageno Densetsu (1986) (Taito) (J).rom"
set SCRIPTNAME="kagenodensetsurom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
