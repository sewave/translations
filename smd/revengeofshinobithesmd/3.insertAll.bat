@echo off
set T_FILENAME="TR_Revenge of Shinobi, The (USA, Europe).md"
set S_FILENAME="Revenge of Shinobi, The (USA, Europe).md"
set SCRIPTNAME="revengeofshinobithesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% title_00020CF4_mod_comp.gfx 20CF4
java -jar Hextractor.jar -if %T_FILENAME% push_start_0006CB24_mod_comp.gfx 6CB24
java -jar Hextractor.jar -if %T_FILENAME% small_font_006CBD0_mod_comp.gfx 6CBD0
java -jar Hextractor.jar -if %T_FILENAME% small_font_2_0006D34E_mod_comp.gfx 6D34E
java -jar Hextractor.jar -if %T_FILENAME% big_font_0006D59E_mod_comp.gfx 6D59E
java -jar Hextractor.jar -if %T_FILENAME% signs_0007028C_mod_comp.gfx 7028C
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
