@echo off
set T_FILENAME="TR_The Addams Family (Erbe).tzx"
set S_FILENAME="The Addams Family (Erbe).tzx"
set SCRIPTNAME="theaddamsfamilytzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
