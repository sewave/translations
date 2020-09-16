@echo off
set T_FILENAME="Pitfall - The Mayan Adventure (USA).sfc"
set SCRIPTNAME="pitfallthemayanadventuresfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
