@echo off
set T_FILENAME="Shodai Nekketsu Kouha Kunio-kun (J) [T+ENG].smc"
set SCRIPTNAME="shodainekketsukouhakuniokunsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.ext %SCRIPTNAME%Alt2.off
pause
