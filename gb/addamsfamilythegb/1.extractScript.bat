@echo off
set T_FILENAME="Addams Family, The (U) [!].gb"
set SCRIPTNAME="addamsfamilythegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
