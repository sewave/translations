@echo off
set T_FILENAME="TR_Bomberman Special (1986) (Hudson) (J).rom"
set SCRIPTNAME="bombermanspecialrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
