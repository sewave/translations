@echo off
set T_FILENAME="Spartan X 2 (J) [T+Eng7Mar2003_Abstract Crouton Productions].nes"
set SCRIPTNAME="spartanx2nes"
"unpack/unpack.exe" %T_FILENAME% %SCRIPTNAME%.dec 0xD310 0x0B28
"unpack/unpack.exe" %T_FILENAME% %SCRIPTNAME%Alt.dec 0xCC10 0x0271

set T_FILENAME=%SCRIPTNAME%.dec
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.ext %SCRIPTNAME%Alt2.off

set T_FILENAME=%SCRIPTNAME%Alt.dec
java -jar Hextractor.jar -a %SCRIPTNAME%Alt4.tbl %T_FILENAME% %SCRIPTNAME%Alt4.ext %SCRIPTNAME%Alt4.off

set T_FILENAME="Spartan X 2 (J) [T+Eng7Mar2003_Abstract Crouton Productions].nes"
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt3.tbl %T_FILENAME% %SCRIPTNAME%Alt3.ext %SCRIPTNAME%Alt3.off

pause
