@echo off
set T_FILENAME="Curse (J) [!].bin"
set SCRIPTNAME="cursesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
