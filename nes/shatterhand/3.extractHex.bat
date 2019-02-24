@echo off
set T_FILENAME="TR_Shatterhand (U) [!].nes"
set SCRIPTNAME="shatterhand"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20610:80,224D0:40,225D0:40,23A90:100,37E90:100,37210:140,266E0:20,3AD50:10
pause
