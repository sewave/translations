@echo off
set T_FILENAME="Hydlide (U) [!].nes"
set SCRIPTNAME="hydlidenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
