@echo off
set T_FILENAME="S.C.A.T. - Special Cybernetic Attack Team (U) [!].nes"
set SCRIPTNAME="scatspecialcyberneticattackteamnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
