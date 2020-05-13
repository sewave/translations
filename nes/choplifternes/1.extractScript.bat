@echo off
set T_FILENAME="Choplifter (J) [!].nes"
set SCRIPTNAME="choplifternes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
