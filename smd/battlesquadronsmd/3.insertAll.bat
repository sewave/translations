@echo off
set T_FILENAME="TR_Battle Squadron (USA, Europe).md"
set S_FILENAME="Battle Squadron (USA, Europe).md"
set SCRIPTNAME="battlesquadronsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
