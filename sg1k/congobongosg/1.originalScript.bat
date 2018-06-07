@echo off
set T_FILENAME="Congo Bongo (SG-1000).sg"
set SCRIPTNAME="congobongosg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
