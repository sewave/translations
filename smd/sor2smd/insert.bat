set T_FILENAME="Streets of Rage 2 (U) [T+ESP].bin"
set S_FILENAME="Streets of Rage 2 (U) [!].bin"
set SCRIPTNAME="sor2smd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause