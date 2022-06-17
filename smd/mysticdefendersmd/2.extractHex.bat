@echo off
set T_FILENAME="TR_Mystic Defender (USA, Europe) (Rev A).md"
set SCRIPTNAME="mysticdefendersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 67E00:1000
pause
