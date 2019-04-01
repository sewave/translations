@echo off
set T_FILENAME="Wrecking Crew (W) [!].nes"
set SCRIPTNAME="wreckingcrewnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
