@echo off
set T_FILENAME="TR_US Championship V'Ball (J) [!].nes"
set S_FILENAME="US Championship V'Ball (J) [!].nes"
set SCRIPTNAME="uschampionshipvballnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
