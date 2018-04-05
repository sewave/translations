@echo off
set T_FILENAME="Spider-Man vs. The Kingpin (U) [!].gg"
set SCRIPTNAME="spidermanvsthekingpingg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
