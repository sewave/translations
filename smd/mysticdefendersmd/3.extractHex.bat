@echo off
set T_FILENAME="TR_Mystic Defender (W) (REV01) [!].gen"
set SCRIPTNAME="mysticdefendersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
