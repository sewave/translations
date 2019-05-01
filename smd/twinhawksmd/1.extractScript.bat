@echo off
set T_FILENAME="Twin Hawk (JE) [!].bin"
set SCRIPTNAME="twinhawksmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
