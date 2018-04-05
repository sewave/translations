@echo off 
set T_FILENAME="TR_Hang-On (E) [!].sms"
set S_FILENAME="Hang-On (E) [!].sms"
set SCRIPTNAME="hangonsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.txt %T_FILENAME% 
pause 
