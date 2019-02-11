@echo off
set T_FILENAME="TR_After Burner Complete (JU) (32X) [!].32x"
set S_FILENAME="After Burner Complete (JU) (32X) [!].32x"
set SCRIPTNAME="afterburnercomplete32x"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
