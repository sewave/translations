@echo off
set T_FILENAME="TR_Dahna - Megami Tanjou (Japan) [T+ENG].md"
set SCRIPTNAME="dahnamegamitanjousmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 962C4:100,95944:20,96004:80,96844:40
pause
