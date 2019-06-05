@echo off
set T_FILENAME="TR_Fatal Fury Special (U) [!].gg"
set S_FILENAME="Fatal Fury Special (U) [!].gg"
set SCRIPTNAME="fatalfuryspecialgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
