@echo off
set T_FILENAME="TR_Nemesis 2 (Japan, Europe) (Alt 1).rom"
set SCRIPTNAME="nemesis2rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 130C8:40
pause
