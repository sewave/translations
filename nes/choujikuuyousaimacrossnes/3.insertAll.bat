@echo off
set T_FILENAME="TR_Choujikuu Yousai - Macross (J) [!].nes"
set S_FILENAME="Choujikuu Yousai - Macross (J) [!].nes"
set SCRIPTNAME="choujikuuyousaimacrossnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
