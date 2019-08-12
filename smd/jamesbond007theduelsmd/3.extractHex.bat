@echo off
set T_FILENAME="TR_James Bond 007 - The Duel (UE) [!].gen"
set SCRIPTNAME="jamesbond007theduelsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
