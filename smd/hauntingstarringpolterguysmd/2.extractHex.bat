@echo off
set T_FILENAME="TR_Haunting Starring Polterguy (UE) [!].bin"
set SCRIPTNAME="hauntingstarringpolterguysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
