set T_FILENAME="Tokkyuu Shirei - Solbrain (J) [T+ESP].nes"
set S_FILENAME="Tokkyuu Shirei - Solbrain (J) [T+Eng1.01_AGTP].nes"
set SCRIPTNAME="solbrain"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Select.tbl %SCRIPTNAME%Select_es.txt %T_FILENAME% false 0
pause