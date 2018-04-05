set T_FILENAME="Shinobi II - The Silent Fury (U) [!].gg"
set SCRIPTNAME="ggshinobi2"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt FE0D-FE70-FF,FEEA-FF61-FF,15769-15816-FF,2344C-23469-00
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt 27DCC-27F18-00
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.txt %SCRIPTNAME%Alt2.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt3.tbl %T_FILENAME% %SCRIPTNAME%Alt3.txt %SCRIPTNAME%Alt3.off
pause