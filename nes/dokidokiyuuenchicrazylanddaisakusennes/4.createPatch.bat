@echo off
set T_FILENAME="TR_Doki!Doki! Yuuenchi - Crazy Land Daisakusen (Japan) [T+ENG].nes"
set S_FILENAME="Doki!Doki! Yuuenchi - Crazy Land Daisakusen (Japan).nes"
set SCRIPTNAME="dokidokiyuuenchicrazylanddaisakusennes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
