@echo off
set T_FILENAME="BurgerTime (U) [!].nes"
set SCRIPTNAME="burgertimenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
