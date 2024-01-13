@echo off
set T_FILENAME="Spider-Man & Venom - Separation Anxiety (U).smc"
set SCRIPTNAME="spdvensepasnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
