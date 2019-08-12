@echo off
set T_FILENAME="TR_Super Smash T.V. (U) [!].gg"
set SCRIPTNAME="supersmashtvgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 23B16:140,2B76C:C0
pause
