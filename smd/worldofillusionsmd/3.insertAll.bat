@echo off
set T_FILENAME="TR_World of Illusion Starring Mickey Mouse and Donald Duck (USA, Korea).md"
set S_FILENAME="World of Illusion Starring Mickey Mouse and Donald Duck (USA, Korea).md"
set SCRIPTNAME="worldofillusionsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% small_font_000A464E_mod_comp.gfx A464E
java -jar Hextractor.jar -if %T_FILENAME% big_font_0002ABDC_mod_comp.gfx 2ABDC
java -jar Hextractor.jar -if %T_FILENAME% press_start_00024C98_mod_comp.gfx 24C98
java -jar Hextractor.jar -if %T_FILENAME% presents_0002DBE6_mod_comp.gfx 2DBE6
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
