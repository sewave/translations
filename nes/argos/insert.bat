set T_FILENAME="Argos no Senshi (J) [T+ESP].nes"
set S_FILENAME="Argos no Senshi (J) [T-Eng0.9].nes"
set SCRIPTNAME="argos"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause