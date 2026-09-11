@echo off
set T_FILENAME="TR_Pac-Man (World) (En,Ja).ngc"
set SCRIPTNAME="pacmanngc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10248:100,10668:70
pause
