@echo off
set T_FILENAME="TR_Taz-Mania (E) [!].gb"
set S_FILENAME="Taz-Mania (E) [!].gb"
set SCRIPTNAME="tazmaniaegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
