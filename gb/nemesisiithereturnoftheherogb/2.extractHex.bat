@echo off
set T_FILENAME="TR_Nemesis II - The Return of the Hero (E) [!].gb"
set SCRIPTNAME="nemesisiithereturnoftheherogb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
