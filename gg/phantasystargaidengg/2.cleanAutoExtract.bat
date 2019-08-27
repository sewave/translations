@echo off
set T_FILENAME="Phantasy Star Gaiden (J) [T+EngV4.0Smallfont_Magic_Trans].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
