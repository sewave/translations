@echo off
set T_FILENAME="TR_Combat Cars (UE) [!].bin"
set SCRIPTNAME="combatcarssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
