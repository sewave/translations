@echo off
set T_FILENAME="TR_Marble Madness (U).gg"
set S_FILENAME="Marble Madness (U).gg"
set SCRIPTNAME="marblemadnessgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
