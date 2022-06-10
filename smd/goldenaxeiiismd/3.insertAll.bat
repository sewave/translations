@echo off
set T_FILENAME="TR_Golden Axe III (Japan).md"
set S_FILENAME="Golden Axe III (Japan).md"
set SCRIPTNAME="goldenaxeiiismd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% font_0001D85E_mod_comp.gfx 1D85E
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
