@echo off
set T_FILENAME="Addams Family, The (World).gg"
set SCRIPTNAME="addamsfamilythegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
