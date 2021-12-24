@echo off
set T_FILENAME="TR_Warriors of Might and Magic (USA) (En,Fr,De).gbc"
set S_FILENAME="Warriors of Might and Magic (USA) (En,Fr,De).gbc"
set SCRIPTNAME="warriorsofmightandmagicgbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
