@echo off
set T_FILENAME="TR_Phantasy Star Gaiden (J) [T+EngV4.0Smallfont_Magic_Trans].gg"
set S_FILENAME="Phantasy Star Gaiden (J) [!].gg"
set SCRIPTNAME="phantasystargaidengg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
