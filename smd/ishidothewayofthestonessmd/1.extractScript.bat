@echo off
set T_FILENAME="Ishido - The Way of the Stones (U) [c][!].bin"
set SCRIPTNAME="ishidothewayofthestonessmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
