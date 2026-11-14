@echo off
set T_FILENAME="TR_Tom Mason's Dinosaurs for Hire (USA).md"
set S_FILENAME="Tom Mason's Dinosaurs for Hire (USA).md"
set SCRIPTNAME="tommasonsdinosaursforhiresmd"
del %T_FILENAME%
REM copy %S_FILENAME% %T_FILENAME%
python insert_all.py
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
REM java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
