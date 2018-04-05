set T_FILENAME="Bad Dudes (U) [!].nes"
set SCRIPTNAME="baddudes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false C6D7-C735-FF,CDAB-CDB7-FF,D2F1-D5C0-FF,CA6A-CA70-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false D0C5-D111-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.txt false 1D969-1D9A9-00
pause