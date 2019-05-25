@echo off
set T_FILENAME="TR_Mystical Fighter (U) [c][!].bin"
set S_FILENAME="Mystical Fighter (U) [c][!].bin"
set SCRIPTNAME="mysticalfightersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
