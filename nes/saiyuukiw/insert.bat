@echo off 
set T_FILENAME="TR_Saiyuuki World (J) [T+ENG].nes"
set S_FILENAME="Saiyuuki World (J) [T+ENG].nes"
set SCRIPTNAME="saiyuukiw"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
pause 
