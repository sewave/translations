@echo off
set T_FILENAME="TR_Batman Beyond - Return of the Joker (U) [C][!].gbc"
set S_FILENAME="Batman Beyond - Return of the Joker (U) [C][!].gbc"
set SCRIPTNAME="batmanbeyondreturnofthejokergbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
