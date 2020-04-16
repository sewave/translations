@echo off
set T_FILENAME="TR_Batman - Revenge of the Joker (U) [!].gen"
set SCRIPTNAME="batmanrevengeofthejokersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
