@echo off
set T_FILENAME="Alfred Chicken (U) [!].nes"
set SCRIPTNAME="alfredchickennes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
