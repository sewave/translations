@echo off
set T_FILENAME="TR_Land of Illusion Starring Mickey Mouse (USA, Europe, Brazil) (En).gg"
set S_FILENAME="Land of Illusion Starring Mickey Mouse (USA, Europe, Brazil) (En).gg"
set SCRIPTNAME="landofillusionstarringmickeymousegg"
del %T_FILENAME%
REM copy %S_FILENAME% %T_FILENAME%
python insert_all.py
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h credits.tbl tr_credits.ext %T_FILENAME%
pause
