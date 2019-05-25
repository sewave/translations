@echo off
set T_FILENAME="TR_Konami's Soccer (1985) (Konami) (J).rom"
set S_FILENAME="Konami's Soccer (1985) (Konami) (J).rom"
set SCRIPTNAME="konamissoccerrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
