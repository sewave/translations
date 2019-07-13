@echo off
set T_FILENAME="TR_Man Overboard! - S.S. Lucifer (E) [c][!].bin"
set S_FILENAME="Man Overboard! - S.S. Lucifer (E) [c][!].bin"
set SCRIPTNAME="manoverboardsslucifersmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
