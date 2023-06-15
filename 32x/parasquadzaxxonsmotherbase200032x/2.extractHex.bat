@echo off
set T_FILENAME="TR_Parasquad ~ Zaxxon's Motherbase 2000 (Japan, USA).32x"
set SCRIPTNAME="parasquadzaxxonsmotherbase200032x"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
