@echo off
set SCRIPTNAME="spartanx2nes"
set T_FILENAME=tr_%SCRIPTNAME%.dec
set S_FILENAME=%SCRIPTNAME%.dec
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%

set T_FILENAME=tr_%SCRIPTNAME%Alt.dec
set S_FILENAME=%SCRIPTNAME%Alt.dec
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt4.tbl tr_%SCRIPTNAME%Alt4.ext %T_FILENAME%

set T_FILENAME="TR_Spartan X 2 (J) [T+Eng7Mar2003_Abstract Crouton Productions].nes"
set S_FILENAME="Spartan X 2 (J) [T+Eng7Mar2003_Abstract Crouton Productions].nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
REM repack texts into rom
"repack/repack.exe" tr_%SCRIPTNAME%.dec %T_FILENAME% 0xD310
"repack/repack.exe" tr_%SCRIPTNAME%Alt.dec %T_FILENAME% 0xCC10

pause
