@echo off
set T_FILENAME="TR_Megaman3Improvement (U) [!].nes"
set S_FILENAME="Megaman3Improvement (U) [!].nes"
set SCRIPTNAME="megaman3improvementnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Dialog.tbl tr_%SCRIPTNAME%Dialog.ext %T_FILENAME%
pause
