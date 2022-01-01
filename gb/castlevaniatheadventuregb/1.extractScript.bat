@echo off
set T_FILENAME="Castlevania - The Adventure (USA).gb"
set SCRIPTNAME="castlevaniatheadventuregb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
