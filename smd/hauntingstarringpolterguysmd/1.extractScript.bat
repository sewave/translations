@echo off
set T_FILENAME="Haunting Starring Polterguy (UE) [!].bin"
set SCRIPTNAME="hauntingstarringpolterguysmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
