@echo off
set T_FILENAME="Woody Pop (U) (V1.1) [!].gg"
set SCRIPTNAME="woodypopgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
