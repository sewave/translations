@echo off
set T_FILENAME="TR_ToeJam & Earl (Japan, Europe) (Rev A).md"
set SCRIPTNAME="toejamearlsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A840E:140,A886E:60,A89AE:40
pause
