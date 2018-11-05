@echo off
set T_FILENAME="Jurassic Park 2 - The Lost World (U) [!].bin"
set SCRIPTNAME="jurassicpark2smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
