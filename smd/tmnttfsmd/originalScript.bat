set T_FILENAME="Teenage Mutant Ninja Turtles - Tournament Fighters (U) [c][!].bin"
set SCRIPTNAME="tmnttfsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 1085C-10A78-00,113C8-11572-00,11A6E-11BA8-00,11CD0-11CEC-00,11E52-12178-00,13D28-14064-00,
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 14206-14664-00
pause