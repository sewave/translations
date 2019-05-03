@echo off
set T_FILENAME="Antarctic Adventure (1984) (Konami) (J).rom"
set SCRIPTNAME="antarcticadventurerom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
