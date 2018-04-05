@echo off 
set T_FILENAME="TR_Bubble Bobble (E) [!].sms"
set S_FILENAME="Bubble Bobble (E) [!].sms"
set SCRIPTNAME="bubblebobblesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
pause 
