@echo off
set T_FILENAME="TR_Bare Knuckle - Ikari no Tetsuken ~ Streets of Rage (World) (Rev A).md"
set S_FILENAME="Bare Knuckle - Ikari no Tetsuken ~ Streets of Rage (World) (Rev A).md"
set SCRIPTNAME="bareknuckleikarinotetsukenstreetsofragesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% eng_font_0001CEC0_mod_comp.gfx 1CEC0
java -jar Hextractor.jar -if %T_FILENAME% jap_font_0001D42A_mod_comp.gfx 1D42A
java -jar Hextractor.jar -if %T_FILENAME% jap_font_2_0001D81A_mod_comp.gfx 1D81A
java -jar Hextractor.jar -if %T_FILENAME% the_end_0003C744_mod_comp.gfx 3C744
java -jar Hextractor.jar -if %T_FILENAME% select_00070CB0_mod_comp.gfx 70CB0
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
