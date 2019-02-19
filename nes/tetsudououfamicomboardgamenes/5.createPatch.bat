@echo off
set T_FILENAME="TR_Tetsudou Ou - Famicom Boardgame (J) [T+ENG].nes"
set S_FILENAME="Tetsudou Ou - Famicom Boardgame (J) [!].nes"
set SCRIPTNAME="tetsudououfamicomboardgamenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
