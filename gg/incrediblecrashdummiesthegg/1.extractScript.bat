@echo off
set T_FILENAME="Incredible Crash Dummies, The (U).gg"
set SCRIPTNAME="incrediblecrashdummiesthegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
