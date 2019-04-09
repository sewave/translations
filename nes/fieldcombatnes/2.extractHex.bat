@echo off
set T_FILENAME="TR_Field Combat (J).nes"
set SCRIPTNAME="fieldcombatnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4510:100,5510:100,43E0:30,53E0:30
pause
