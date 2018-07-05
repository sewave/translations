@echo off
set T_FILENAME="TR_Choplifter (SG-1000) [!].sg"
set S_FILENAME="Choplifter (SG-1000) [!].sg"
set SCRIPTNAME="chopliftersg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
