@echo off
set T_FILENAME="TR_Jetsons, The (U).gb"
set S_FILENAME="Jetsons, The (U).gb"
set SCRIPTNAME="jetsonsthegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
