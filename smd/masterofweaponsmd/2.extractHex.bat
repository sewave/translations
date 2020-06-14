@echo off
set T_FILENAME="TR_Master of Weapon (J) [!].bin"
set SCRIPTNAME="masterofweaponsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
