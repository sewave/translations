@echo off
set T_FILENAME="TR_Wizards & Warriors (U) (PRG1) [!].nes"
set SCRIPTNAME="wizardswarriorsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
