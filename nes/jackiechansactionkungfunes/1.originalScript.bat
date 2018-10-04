@echo off
set T_FILENAME="Jackie Chan's Action Kung Fu (U) [!].nes"
set SCRIPTNAME="jackiechansactionkungfunes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
