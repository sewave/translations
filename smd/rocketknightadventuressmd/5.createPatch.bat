@echo off
set T_FILENAME="TR_Rocket Knight Adventures (U) [!].gen"
set S_FILENAME="Rocket Knight Adventures (U) [!].gen"
set SCRIPTNAME="rocketknightadventuressmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
