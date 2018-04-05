set T_FILENAME="Shinobi II - The Silent Fury (U) [T+ESP].gg"
set S_FILENAME="Shinobi II - The Silent Fury (U) [!].gg"
set SCRIPTNAME="ggshinobi2"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl %SCRIPTNAME%Alt2_es.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl %SCRIPTNAME%Alt3_es.ext %T_FILENAME%
pause