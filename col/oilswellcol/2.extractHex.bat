@echo off
set T_FILENAME="TR_Oil's Well (1984) (Sierravision).col"
set SCRIPTNAME="oilswellcol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1AFF:8,3D6F:18,3E6F:80,3EEF:30,3F6F:50
pause
