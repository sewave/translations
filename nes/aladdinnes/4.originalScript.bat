@echo off
set T_FILENAME="Aladdin (E) [!].nes"
set SCRIPTNAME="aladdinnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
