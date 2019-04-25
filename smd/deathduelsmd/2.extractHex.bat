@echo off
set T_FILENAME="TR_Death Duel (U) [!].bin"
set SCRIPTNAME="deathduelsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
