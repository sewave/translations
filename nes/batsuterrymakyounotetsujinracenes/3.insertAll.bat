@echo off
set T_FILENAME="TR_Batsu & Terry - Makyou no Tetsujin Race (Japan) [T+ENG].nes"
set S_FILENAME="Batsu & Terry - Makyou no Tetsujin Race (Japan) [T+ENG].nes"
set SCRIPTNAME="batsuterrymakyounotetsujinracenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
