set T_FILENAME="Akumajou Densetsu (J) [T+ESP].nes"
set S_FILENAME="Akumajou Densetsu (J) [T+Eng1.0_Vice].nes"
set SCRIPTNAME="akumajodensetsu"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl %SCRIPTNAME%Alt2_es.txt %T_FILENAME% false 0
pause