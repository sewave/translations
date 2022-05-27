@echo off
set T_FILENAME="TR_Sceptre Of Bagdad.tzx"
set S_FILENAME="Sceptre Of Bagdad.tzx"
set SCRIPTNAME="sceptreofbagdadtzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
