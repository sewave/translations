@echo off
set T_FILENAME="Fatal Fury Special (U) [!].gg"
set SCRIPTNAME="fatalfuryspecialgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
