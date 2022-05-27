@echo off
set T_FILENAME="TR_Jewel Master (USA, Europe) (Rev A).md"
set S_FILENAME="Jewel Master (USA, Europe) (Rev A).md"
set SCRIPTNAME="jewelmastersmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% title_0003B728_mod_comp.gfx 3B728
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
