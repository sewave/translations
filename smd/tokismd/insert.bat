@echo off 
set T_FILENAME="TR_Toki - Going Ape Spit (UE) [c][!].bin"
set S_FILENAME="Toki - Going Ape Spit (UE) [c][!].bin"
set SCRIPTNAME="tokismd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause 
