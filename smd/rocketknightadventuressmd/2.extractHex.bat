@echo off
set T_FILENAME="TR_Rocket Knight Adventures (U) [!].gen"
set SCRIPTNAME="rocketknightadventuressmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
