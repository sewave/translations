@echo off
set T_FILENAME="Donkey Kong Jr. (JU) (PRG1) [!].nes"
set SCRIPTNAME="donkeykongjrnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
