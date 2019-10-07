@echo off
set T_FILENAME="Aero the Acro-Bat 2 (U) [!].bin"
set SCRIPTNAME="aerotheacrobat2smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
