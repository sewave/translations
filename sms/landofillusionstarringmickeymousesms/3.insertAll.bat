@echo off
set T_FILENAME="TR_Land of Illusion Starring Mickey Mouse (Europe, Brazil) (En).sms"
set S_FILENAME="Land of Illusion Starring Mickey Mouse (Europe, Brazil) (En).sms"
set SCRIPTNAME="landofillusionstarringmickeymousesms"
del %T_FILENAME%
REM copy %S_FILENAME% %T_FILENAME%
python insert_all.py
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
REM java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
