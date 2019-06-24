@echo off
set T_FILENAME="Ka-Ge-Ki - Fists of Steel (U) [!].bin"
set SCRIPTNAME="kagekifistsofsteelsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
