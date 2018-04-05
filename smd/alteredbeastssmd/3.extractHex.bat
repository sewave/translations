@echo off
set T_FILENAME="TR_Altered Beast (UE) (REV02) [!].gen"
set SCRIPTNAME="alteredbeastssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
