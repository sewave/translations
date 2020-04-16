@echo off
set T_FILENAME="TR_World Cup Italia '90 (Europe).md"
set S_FILENAME="World Cup Italia '90 (Europe).md"
set SCRIPTNAME="worldcupitalia90smd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
