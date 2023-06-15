@echo off
set T_FILENAME="Parasquad ~ Zaxxon's Motherbase 2000 (Japan, USA).32x"
set SCRIPTNAME="parasquadzaxxonsmotherbase200032x"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
