@echo off
set T_FILENAME="TR_Raid 2020 (Color Dreams) [!].nes"
set SCRIPTNAME="raid2020nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 11120:10,12290:10,14210:10,16210:40
pause
