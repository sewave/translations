@echo off
set T_FILENAME="TR_Tetris (World) (Rev A).gb"
set SCRIPTNAME="tetrisgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 41FF:8,567C:10,576C:10,587C:10
pause
