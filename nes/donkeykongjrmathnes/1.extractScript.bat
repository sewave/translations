@echo off
set T_FILENAME="Donkey Kong Jr. Math (U) [!].nes"
set SCRIPTNAME="donkeykongjrmathnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
