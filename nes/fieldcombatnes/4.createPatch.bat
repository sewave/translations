@echo off
set T_FILENAME="TR_Field Combat (J).nes"
set S_FILENAME="Field Combat (J).nes"
set SCRIPTNAME="fieldcombatnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
