@echo off
set T_FILENAME="Battle Squadron (USA, Europe).md"
set SCRIPTNAME="battlesquadronsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
