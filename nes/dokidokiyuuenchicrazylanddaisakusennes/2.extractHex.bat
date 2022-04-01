@echo off
set T_FILENAME="TR_Doki!Doki! Yuuenchi - Crazy Land Daisakusen (Japan) [T+ENG].nes"
set SCRIPTNAME="dokidokiyuuenchicrazylanddaisakusennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 201C0:40,202F0:100,205B0:20,206D0:20,204F0:20,20E90:20,20EF0:20,20F90:20
pause
