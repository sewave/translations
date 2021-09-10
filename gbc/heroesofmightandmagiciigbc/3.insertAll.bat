@echo off
set T_FILENAME="TR_Heroes of Might and Magic II (USA) (En,Fr,De).gbc"
set S_FILENAME="Heroes of Might and Magic II (USA) (En,Fr,De).gbc"
set SCRIPTNAME="heroesofmightandmagiciigbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
