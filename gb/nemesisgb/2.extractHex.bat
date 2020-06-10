@echo off
set T_FILENAME="TR_Nemesis (U) [!].gb"
set SCRIPTNAME="nemesisgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
