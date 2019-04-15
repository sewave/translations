@echo off
set T_FILENAME="Spartan X (J) [!].nes"
set SCRIPTNAME="spartanxnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
