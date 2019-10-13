@echo off
set T_FILENAME="TR_Bust-A-Move (U) [!].gg"
set S_FILENAME="Bust-A-Move (U) [!].gg"
set SCRIPTNAME="bustamovegg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% pcom_3D188.dat 3D188
java -jar Hextractor.jar -if %T_FILENAME% score_37ECA.dat 37ECA
pause
