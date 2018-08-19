@echo off
set T_FILENAME="TR_Valkyrie no Densetsu (Japan) [T+ENG].pce"
set S_FILENAME="Valkyrie no Densetsu (Japan).pce"
set SCRIPTNAME="valkyrienodensetsupce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
