@echo off 
set T_FILENAME="TR_Mickey Mouse III - Yume Fuusen (J) [T+ENG].nes"
set S_FILENAME="Mickey Mouse III - Yume Fuusen (J) [T+ENG].nes"
set SCRIPTNAME="mickey3nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.ext %T_FILENAME% 
pause 
