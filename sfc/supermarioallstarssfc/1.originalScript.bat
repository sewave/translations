@echo off
set T_FILENAME="Super Mario All-Stars (U) [!].smc"
set SCRIPTNAME="supermarioallstarssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.ext %SCRIPTNAME%Alt2.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt3.tbl %T_FILENAME% %SCRIPTNAME%Alt3.ext %SCRIPTNAME%Alt3.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt4.tbl %T_FILENAME% %SCRIPTNAME%Alt4.ext %SCRIPTNAME%Alt4.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt5.tbl %T_FILENAME% %SCRIPTNAME%Alt5.ext %SCRIPTNAME%Alt5.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt6.tbl %T_FILENAME% %SCRIPTNAME%Alt6.ext %SCRIPTNAME%Alt6.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt7.tbl %T_FILENAME% %SCRIPTNAME%Alt7.ext %SCRIPTNAME%Alt7.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt8.tbl %T_FILENAME% %SCRIPTNAME%Alt8.ext %SCRIPTNAME%Alt8.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt9.tbl %T_FILENAME% %SCRIPTNAME%Alt9.ext %SCRIPTNAME%Alt9.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt10.tbl %T_FILENAME% %SCRIPTNAME%Alt10.ext %SCRIPTNAME%Alt10.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt11.tbl %T_FILENAME% %SCRIPTNAME%Alt11.ext %SCRIPTNAME%Alt11.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt12.tbl %T_FILENAME% %SCRIPTNAME%Alt12.ext %SCRIPTNAME%Alt12.off
pause
