@echo off
set T_FILENAME="Stevedore (2020) (theNestruo & Wonder) [v1.2].rom"
set SCRIPTNAME="stevedorerom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
