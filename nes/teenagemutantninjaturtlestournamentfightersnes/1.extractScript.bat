@echo off
set T_FILENAME="Teenage Mutant Ninja Turtles - Tournament Fighters (USA).nes"
set SCRIPTNAME="teenagemutantninjaturtlestournamentfightersnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
console.exe extract --rom %T_FILENAME% --p 2b --pointers-size 2 --pointers-offset 100C7 --pointers-size 3A --base=8010 --end-line FF --file %SCRIPTNAME%Alt.ext --tbl %SCRIPTNAME%.tbl
console.exe extract --rom %T_FILENAME% --p 2b --pointers-size 2 --pointers-offset 19C25 --pointers-size 6 --base=10010 --end-line FF --file %SCRIPTNAME%Alt2.ext --tbl %SCRIPTNAME%.tbl
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%Alt2b.ext %SCRIPTNAME%Alt2b.off
console.exe extract --rom %T_FILENAME% --p 2b --pointers-size 2 --pointers-offset 19C2D --pointers-size 8 --base=10010 --end-line FF --file %SCRIPTNAME%Alt2c.ext --tbl %SCRIPTNAME%.tbl
java -jar Hextractor.jar -a %SCRIPTNAME%Alt3.tbl %T_FILENAME% %SCRIPTNAME%Alt3.ext %SCRIPTNAME%Alt3.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt4.tbl %T_FILENAME% %SCRIPTNAME%Alt4.ext %SCRIPTNAME%Alt4.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt5.tbl %T_FILENAME% %SCRIPTNAME%Alt5.ext %SCRIPTNAME%Alt5.off
pause
