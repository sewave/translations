@echo off
set T_FILENAME="Blades of Vengeance (UE) [!].gen"
set SCRIPTNAME="bladesofvengeancesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
