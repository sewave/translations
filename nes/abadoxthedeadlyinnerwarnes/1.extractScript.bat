@echo off
set T_FILENAME="Abadox - The Deadly Inner War (U) [!].nes"
set SCRIPTNAME="abadoxthedeadlyinnerwarnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
