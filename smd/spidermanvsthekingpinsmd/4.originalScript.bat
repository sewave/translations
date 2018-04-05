@echo off
set T_FILENAME="Spider-Man vs The Kingpin (W) [!].bin"
set SCRIPTNAME="spidermanvsthekingpinsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
