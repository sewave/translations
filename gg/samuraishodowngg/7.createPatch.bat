@echo off
set T_FILENAME="TR_Samurai Shodown (U) [!].gg"
set S_FILENAME="Samurai Shodown (U) [!].gg"
set SCRIPTNAME="samuraishodowngg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
