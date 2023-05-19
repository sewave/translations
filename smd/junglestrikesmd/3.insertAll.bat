@echo off
set T_FILENAME="TR_Jungle Strike (USA, Europe).md"
set S_FILENAME="Jungle Strike (USA, Europe).md"
set SCRIPTNAME="junglestrikesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% font_1BBE84_mod_comp.gfx 1BBE84
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
