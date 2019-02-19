@echo off
set T_FILENAME="TR_Columns (UE) [!].sms"
set S_FILENAME="Columns (UE) [!].sms"
set SCRIPTNAME="columnssms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% score_C1A8.dat C1A8
java -jar Hextractor.jar -if %T_FILENAME% score_E4AE.dat E4AE
java -jar Hextractor.jar -if %T_FILENAME% score_C613.dat C613
java -jar Hextractor.jar -if %T_FILENAME% score_EAFA.dat EAFA
java -jar Hextractor.jar -if %T_FILENAME% score_CFEE.dat CFEE
java -jar Hextractor.jar -if %T_FILENAME% score_D9A1.dat D9A1
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
