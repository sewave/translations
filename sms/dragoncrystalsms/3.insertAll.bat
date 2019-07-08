@echo off
set T_FILENAME="TR_Dragon Crystal (E) [!].sms"
set S_FILENAME="Dragon Crystal (E) [!].sms"
set SCRIPTNAME="dragoncrystalsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
REM java -jar Hextractor.jar -if %T_FILENAME% 18935.dat 18935
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
