@echo off
set T_FILENAME="TR_Square Deal - The Game of Two-Dimensional Poker (USA).gb"
set SCRIPTNAME="squaredealthegameoftwodimensionalpokergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F8E0:10,D100:100,FF50:10,DF00:80
pause
