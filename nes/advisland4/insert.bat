set T_FILENAME="Takahashi Meijin no Bouken Shima IV (J) [T+ESP].nes"
set S_FILENAME="Takahashi Meijin no Bouken Shima IV (J) [T+Eng1.0_NeoDemiforce].nes"
set SCRIPTNAME="advisland4"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Menu.tbl %SCRIPTNAME%Menu_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Pres.tbl %SCRIPTNAME%Pres_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Title.tbl %SCRIPTNAME%Title_es.txt %T_FILENAME% false 0
pause