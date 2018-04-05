@echo off
set T_FILENAME="Beauty and the Beast - Roar of the Beast (U) [!].bin"
set SCRIPTNAME="beautybeastroarsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
