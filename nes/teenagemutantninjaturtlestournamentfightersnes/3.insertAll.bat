@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles - Tournament Fighters (USA).nes"
set S_FILENAME="Teenage Mutant Ninja Turtles - Tournament Fighters (USA).nes"
set SCRIPTNAME="teenagemutantninjaturtlestournamentfightersnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
console.exe insert --rom %T_FILENAME% --p 2b --pointers-offset 100C7 --base=8010 --file tr_%SCRIPTNAME%Alt.ext --tbl %SCRIPTNAME%.tbl --text-offset 10B00 --text-size 400
console.exe insert --rom %T_FILENAME% --p 2b --pointers-offset 19C25 --base=10010 --file tr_%SCRIPTNAME%Alt2.ext --tbl %SCRIPTNAME%.tbl --text-offset 1A5B0 --text-size 400
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%Alt2b.ext %T_FILENAME%
console.exe insert --rom %T_FILENAME% --p 2b --pointers-offset 19C2D --base=10010 --file tr_%SCRIPTNAME%Alt2c.ext --tbl %SCRIPTNAME%.tbl --text-offset 1A9B0 --text-size 200
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt4.tbl tr_%SCRIPTNAME%Alt4.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt5.tbl tr_%SCRIPTNAME%Alt5.ext %T_FILENAME%
pause
