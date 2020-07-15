@echo off
set T_FILENAME="Faceball 2000 (USA).sfc"
set SCRIPTNAME="faceball2000sfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
