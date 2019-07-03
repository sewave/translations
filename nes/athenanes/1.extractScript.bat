@echo off
set T_FILENAME="Athena (U) [!].nes"
set SCRIPTNAME="athenanes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
