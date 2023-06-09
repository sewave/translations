@echo off
set T_FILENAME="TR_Seiken Psychocalibur - Majuu no Mori Densetsu (Japan) [T+ENG].fds"
set SCRIPTNAME="seikenpsychocaliburmajuunomoridensetsufds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 143C:10,9161:28,9142:8,91EB:10
pause
