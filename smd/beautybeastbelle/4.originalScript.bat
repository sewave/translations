@echo off
set T_FILENAME="Beauty and the Beast - Belle's Quest (U) [!].bin"
set SCRIPTNAME="beautybeastbelle"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
