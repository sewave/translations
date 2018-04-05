@echo off
set T_FILENAME="TR_Megaman VI (U) [!].nes"
set S_FILENAME="Megaman VI (U) [!].nes"
set SCRIPTNAME="megaman6"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Menu.tbl tr_%SCRIPTNAME%Menu.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Select.tbl tr_%SCRIPTNAME%Select.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Title.tbl tr_%SCRIPTNAME%Title.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Adaptor.tbl tr_%SCRIPTNAME%Adaptor.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Credits.tbl tr_%SCRIPTNAME%Credits.ext %T_FILENAME%
pause
