@echo off
set T_FILENAME="TR_Double Clutch (Europe).md"
set S_FILENAME="Double Clutch (Europe).md"
set SCRIPTNAME="doubleclutchsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
