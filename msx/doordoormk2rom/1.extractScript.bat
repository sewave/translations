@echo off
set T_FILENAME="Doordoor Mk2 (1984) (Enix) (J).rom"
set SCRIPTNAME="doordoormk2rom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
