@echo off
set T_FILENAME="Yie Ar Kung-Fu (J) (V1.4) [!].nes"
set SCRIPTNAME="yiearkungfunes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
