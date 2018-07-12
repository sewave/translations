@echo off
set T_FILENAME="TR_Streets of Rage 2 (E) [!].sms"
set S_FILENAME="Streets of Rage 2 (E) [!].sms"
set SCRIPTNAME="sor2sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
