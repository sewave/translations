@echo off
set T_FILENAME="TR_Kouryuu Densetsu Villgust Gaiden (Japan) [T+ENG].nes"
set SCRIPTNAME="kouryuudensetsuvillgustgaidennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 41790:80,41BB0:60,41AC0:50,41A90:10,41770:10,41A40:10
pause
