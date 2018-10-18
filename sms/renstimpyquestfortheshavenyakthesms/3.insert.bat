@echo off
set T_FILENAME="TR_Ren & Stimpy - Quest for the Shaven Yak, The (B) [!].sms"
set S_FILENAME="Ren & Stimpy - Quest for the Shaven Yak, The (B) [!].sms"
set SCRIPTNAME="renstimpyquestfortheshavenyakthesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
