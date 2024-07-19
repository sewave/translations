@echo off
set T_FILENAME="TR_Urban Strike (USA, Europe).md"
set S_FILENAME="Urban Strike (USA, Europe).md"
set SCRIPTNAME="urbanstrikesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
StrikeLZSS.exe "font_1CA8F4_mod.gfx" "font_1CA8F4_mod_comp.gfx" -c -p 0
echo.
java -jar Hextractor.jar -if %T_FILENAME% font_1CA8F4_mod_comp.gfx 1CA8F4
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
