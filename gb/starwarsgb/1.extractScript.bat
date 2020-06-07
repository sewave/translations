@echo off
set T_FILENAME="Star Wars (U) (V1.1) [!].gb"
set SCRIPTNAME="starwarsgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
