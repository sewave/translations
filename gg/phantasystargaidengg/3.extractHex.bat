@echo off
set T_FILENAME="TR_Phantasy Star Gaiden (J) [T+EngV4.0Smallfont_Magic_Trans].gg"
set SCRIPTNAME="phantasystargaidengg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3C430-3C7FF
pause
