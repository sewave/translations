@echo off
set T_FILENAME="TR_Mystical Fighter (U) [c][!].bin"
set SCRIPTNAME="mysticalfightersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F0E0,45000
pause
