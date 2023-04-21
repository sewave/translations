@echo off
set T_FILENAME="Shaq-Fu (USA, Europe).md"
set SCRIPTNAME="shaqfusmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
