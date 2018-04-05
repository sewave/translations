@echo off
set T_FILENAME="TR_Dahna - Megami Tanjou (J) [T+ENG].bin"
set SCRIPTNAME="dahna"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 95944:20,
pause
