@echo off
set T_FILENAME="Jurassic Park 2 - The Chaos Continues (UE) (M4) [!].gb"
set SCRIPTNAME="jurassicpark2thechaoscontinuesgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
