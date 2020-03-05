@echo off
set T_FILENAME="TR_Streets of Rage 3 (U) [!].bin"
set S_FILENAME="Streets of Rage 3 (U) [!].bin"
set SCRIPTNAME="streetsofrage3smd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
REM EXCEEDS COMPRESSED SIZE
REM java -jar Hextractor.jar -if %T_FILENAME% 0023BFBE_t_c.smd 23BFBE
java -jar Hextractor.jar -if %T_FILENAME% 002695D0_t_c.smd 2695D0
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
