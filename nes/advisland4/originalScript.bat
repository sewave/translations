set T_FILENAME="Takahashi Meijin no Bouken Shima IV (J) [T+Eng1.0_NeoDemiforce].nes"
set SCRIPTNAME="advisland4"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 12E9-18F1-07,3709F-3723E-EA
java -jar Hextractor.jar -a %SCRIPTNAME%Menu.tbl %T_FILENAME% %SCRIPTNAME%Menu.txt false 215E0-2182F-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.txt false 2AECE-2AF38-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Pres.tbl %T_FILENAME% %SCRIPTNAME%Pres.txt false 5204-5224-FF
pause