@echo off
set T_FILENAME="TR_Dr. Mario (JU) (PRG1) [!].nes"
set SCRIPTNAME="drmariones"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B170:50,C170:50,D740:60,DF40:40,D610:B0,8A80:20,8B80:20,8C80:20,9A80:20,9B80:20,9C80:20,E310:10
pause
