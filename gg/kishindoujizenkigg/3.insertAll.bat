@echo off
set T_FILENAME="TR_Kishin Douji Zenki (Japan) [T+ENG].gg"
set S_FILENAME="Kishin Douji Zenki (Japan) [T+ENG].gg"
set SCRIPTNAME="kishindoujizenkigg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% font.dat 27150
pause
