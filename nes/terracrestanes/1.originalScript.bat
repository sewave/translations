@echo off
set T_FILENAME="Terra Cresta (U) [!].nes"
set SCRIPTNAME="terracrestanes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
