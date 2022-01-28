@echo off
set T_FILENAME="TR_Aigina no Yogen - Balubalouk no Densetsu Yori (Japan) [T+ENG].nes"
set S_FILENAME="Aigina no Yogen - Balubalouk no Densetsu Yori (Japan).nes"
set SCRIPTNAME="aiginanoyogenbalubalouknodensetsuyorines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
