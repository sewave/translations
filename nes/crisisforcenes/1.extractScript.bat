@echo off
set T_FILENAME="Crisis Force (J) [!].nes"
set SCRIPTNAME="crisisforcenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
