@echo off
set T_FILENAME="TR_Valkyrie no Densetsu (Japan) [T+ENG].pce"
set SCRIPTNAME="valkyrienodensetsupce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1789F:70
pause
