@echo off
set T_FILENAME="TR_Miracle Warriors - Seal of the Dark Lord (UE) [!].sms"
set S_FILENAME="Miracle Warriors - Seal of the Dark Lord (UE) [!].sms"
set SCRIPTNAME="miraclewarriorssealofthedarklordsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% F7CD.dat F7CD
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
