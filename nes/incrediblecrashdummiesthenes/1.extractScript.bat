@echo off
set T_FILENAME="Incredible Crash Dummies, The (U) [!].nes"
set SCRIPTNAME="incrediblecrashdummiesthenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
