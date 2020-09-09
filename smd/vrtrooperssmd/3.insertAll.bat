@echo off
set T_FILENAME="TR_VR Troopers (USA, Europe).md"
set S_FILENAME="VR Troopers (USA, Europe).md"
set SCRIPTNAME="vrtrooperssmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
