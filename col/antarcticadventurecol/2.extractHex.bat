@echo off
set T_FILENAME="TR_Antarctic Adventure (1984) (Konami).col"
set SCRIPTNAME="antarcticadventurecol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1C0A:20
pause
