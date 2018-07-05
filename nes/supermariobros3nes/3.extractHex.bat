@echo off
set T_FILENAME="TR_Super Mario Bros. 3 (U) (PRG1) [!].nes"
set SCRIPTNAME="supermariobros3nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5E0B0:20,5E1B0:40,5E7D0:10,57710:40,4C9D0-4CAD0,4CBF0:20,48290:40,45D90:10,45FE0:10,57810-57F10,
pause
