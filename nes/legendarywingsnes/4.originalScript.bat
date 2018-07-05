@echo off
set T_FILENAME="Legendary Wings (U) [!].nes"
set SCRIPTNAME="legendarywingsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
