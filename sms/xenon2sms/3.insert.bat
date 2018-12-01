@echo off
set T_FILENAME="TR_Xenon 2 (E) (Image Works) [!].sms"
set S_FILENAME="Xenon 2 (E) (Image Works) [!].sms"
set SCRIPTNAME="xenon2sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
