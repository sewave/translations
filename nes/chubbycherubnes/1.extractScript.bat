@echo off
set T_FILENAME="Chubby Cherub (U) [!].nes"
set SCRIPTNAME="chubbycherubnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
