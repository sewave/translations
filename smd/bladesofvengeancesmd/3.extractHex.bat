@echo off
set T_FILENAME="TR_Blades of Vengeance (UE) [!].gen"
set SCRIPTNAME="bladesofvengeancesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex DAC84:80,EAABC-ED0BC
pause
