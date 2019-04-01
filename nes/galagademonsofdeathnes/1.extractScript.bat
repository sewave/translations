@echo off
set T_FILENAME="Galaga - Demons of Death (U) [!].nes"
set SCRIPTNAME="galagademonsofdeathnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
