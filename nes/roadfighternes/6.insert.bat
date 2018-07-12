@echo off
set T_FILENAME="TR_Road Fighter (J) [!].nes"
set S_FILENAME="Road Fighter (J) [!].nes"
set SCRIPTNAME="roadfighternes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
