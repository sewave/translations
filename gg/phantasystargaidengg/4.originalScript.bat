@echo off
set T_FILENAME="Phantasy Star Gaiden (J) [T+EngV4.0Smallfont_Magic_Trans].gg"
set SCRIPTNAME="phantasystargaidengg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
