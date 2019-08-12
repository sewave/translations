@echo off
set T_FILENAME="Kung-Fu Heroes (U) [!].nes"
set SCRIPTNAME="kungfuheroesnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
