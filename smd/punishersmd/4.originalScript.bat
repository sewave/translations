@echo off
set T_FILENAME="Punisher, The (U) [!].bin"
set SCRIPTNAME="punishersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
