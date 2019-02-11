@echo off
set T_FILENAME="TR_Berenstain Bears', The - Camping Adventure (U) [!].gg"
set SCRIPTNAME="berenstainbearsthecampingadventuregg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
