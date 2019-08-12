@echo off
set T_FILENAME="Super Smash T.V. (U) [!].gg"
set SCRIPTNAME="supersmashtvgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
