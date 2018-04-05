set T_FILENAME="Hook (U) [T+ESP].nes"
set S_FILENAME="Hook (U) [!].nes"
set SCRIPTNAME="hook"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
REM java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Cole.tbl %SCRIPTNAME%Cole_es.txt %T_FILENAME% false 0
pause
