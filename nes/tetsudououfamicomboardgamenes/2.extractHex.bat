@echo off
set T_FILENAME="TR_Tetsudou Ou - Famicom Boardgame (J) [T+ENG].nes"
set SCRIPTNAME="tetsudououfamicomboardgamenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
