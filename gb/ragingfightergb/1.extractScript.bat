@echo off
set T_FILENAME="Raging Fighter (USA, Europe).gb"
set SCRIPTNAME="ragingfightergb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
