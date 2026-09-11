@echo off
set T_FILENAME="TR_High Seas Havoc (USA) (En,Ja).md"
set S_FILENAME="High Seas Havoc (USA) (En,Ja).md"
set SCRIPTNAME="highseashavocsmd"
del %T_FILENAME%
REM copy %S_FILENAME% %T_FILENAME%
python tools/insert_all.py
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
REM java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
