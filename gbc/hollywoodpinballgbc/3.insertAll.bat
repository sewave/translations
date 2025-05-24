@echo off
set T_FILENAME="TR_Hollywood Pinball (Europe) (En,Fr,De,It) (GB Compatible).gbc"
set S_FILENAME="Hollywood Pinball (Europe) (En,Fr,De,It) (GB Compatible).gbc"
set SCRIPTNAME="hollywoodpinballgbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
