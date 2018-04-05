@echo off 
set T_FILENAME="TR_Mickey Mouse III - Yume Fuusen (J) [T+ENG].nes"
set SCRIPTNAME="mickey3nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 39120:80,39620:1A0
pause 
