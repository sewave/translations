@echo off
set T_FILENAME="Dino Land (U) [!].bin"
set SCRIPTNAME="dinolandsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
