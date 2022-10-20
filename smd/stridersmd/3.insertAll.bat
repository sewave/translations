@echo off
set T_FILENAME="TR_Strider (USA, Europe).md"
set S_FILENAME="Strider (USA, Europe).md"
set SCRIPTNAME="stridersmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% font_0004F5A2_mod_comp.gfx 000FF400
java -jar Hextractor.jar -if %T_FILENAME% title_000570B8_mod_comp.gfx 000570B8
java -jar Hextractor.jar -if %T_FILENAME% status_0004E24E_comp.gfx 000FFC00
java -jar Hextractor.jar -if %T_FILENAME% font_end_000A03BA_mod_comp.gfx 000A03BA
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
