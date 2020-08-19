@echo off
set T_FILENAME="TR_R-Type DX (U) [C][!].gbc"
set S_FILENAME="R-Type DX (U) [C][!].gbc"
set SCRIPTNAME="rtypedxgbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt4.tbl tr_%SCRIPTNAME%Alt4.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt5.tbl tr_%SCRIPTNAME%Alt5.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt6.tbl tr_%SCRIPTNAME%Alt6.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt7.tbl tr_%SCRIPTNAME%Alt7.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt8.tbl tr_%SCRIPTNAME%Alt8.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Altb.tbl tr_%SCRIPTNAME%Altb.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
