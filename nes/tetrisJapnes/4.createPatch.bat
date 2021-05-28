@echo off
set T_FILENAME="TR_Tetris (Bulletproof) (Japan) (Rev B).nes"
set S_FILENAME="Tetris (Bulletproof) (Japan) (Rev B).nes"
set SCRIPTNAME="tetrisnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
