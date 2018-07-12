@echo off 
set T_FILENAME="TR_True Lies (W) [!].gen"
set S_FILENAME="True Lies (W) [!].gen"
set SCRIPTNAME="trueliessmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%Title.tbl tr_%SCRIPTNAME%Title.ext %T_FILENAME% 
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause 
