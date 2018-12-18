@echo off
set T_FILENAME="TR_Paperboy II (U) [!].bin"
set S_FILENAME="Paperboy II (U) [!].bin"
set SCRIPTNAME="paperboyiismd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
