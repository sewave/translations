@echo off 
set T_FILENAME="TR_Ranger-X (U) [!].gen"
set S_FILENAME="Ranger-X (U) [!].gen"
set SCRIPTNAME="rangerx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.ext %T_FILENAME% 
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause 
