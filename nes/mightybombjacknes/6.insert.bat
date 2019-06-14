@echo off
set T_FILENAME="TR_Mighty Bomb Jack (U) [!].nes"
set S_FILENAME="Mighty Bomb Jack (U) [!].nes"
set SCRIPTNAME="mightybombjacknes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
