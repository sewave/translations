@echo off
set T_FILENAME="Wario Land - Super Mario Land 3 (World).gb"
set SCRIPTNAME="wariolandsupermarioland3gb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.ext %SCRIPTNAME%Alt2.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt3.tbl %T_FILENAME% %SCRIPTNAME%Alt3.ext %SCRIPTNAME%Alt3.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt4.tbl %T_FILENAME% %SCRIPTNAME%Alt4.ext %SCRIPTNAME%Alt4.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt5.tbl %T_FILENAME% %SCRIPTNAME%Alt5.ext %SCRIPTNAME%Alt5.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt6.tbl %T_FILENAME% %SCRIPTNAME%Alt6.ext %SCRIPTNAME%Alt6.off
pause
