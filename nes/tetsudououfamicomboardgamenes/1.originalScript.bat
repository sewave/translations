@echo off
set T_FILENAME="Tetsudou Ou - Famicom Boardgame (J) [T+ENG].nes"
set SCRIPTNAME="tetsudououfamicomboardgamenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
