@echo off
set T_FILENAME="TR_Terra Cresta II - Mandoler no Gyakushuu (Japan).pce"
set S_FILENAME="Terra Cresta II - Mandoler no Gyakushuu (Japan).pce"
set SCRIPTNAME="terracrestaiimandolernogyakushuupce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
pause
