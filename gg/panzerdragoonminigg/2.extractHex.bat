@echo off
set T_FILENAME="TR_Panzer Dragoon Mini (J) [!].gg"
set SCRIPTNAME="panzerdragoonminigg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FD91:20,2EE61:120,2F881:120,19950:420,19D70:600
pause
