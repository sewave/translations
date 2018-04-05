@echo off 
set T_FILENAME="TR_Prince of Persia (E).sms"
set S_FILENAME="Prince of Persia (E).sms"
set SCRIPTNAME="ppersiasms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
pause 
