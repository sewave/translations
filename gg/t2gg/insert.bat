set T_FILENAME="Terminator 2 - Judgment Day (USA, Europe) [T+ESP].gg"
set S_FILENAME="Terminator 2 - Judgment Day (USA, Europe).gg"
set SCRIPTNAME="t2gg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause