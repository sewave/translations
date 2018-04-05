@echo off 
set T_FILENAME="TR_Robocop 3 (UE) [!].gen"
set S_FILENAME="Robocop 3 (UE) [!].gen"
set SCRIPTNAME="robocop3smd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause 
