@echo off
set T_FILENAME="Mary Shelley's Frankenstein (USA).md"
set SCRIPTNAME="maryshelleysfrankensteinsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
