@echo off
set T_FILENAME="translated/FDTXT.DAT"
set T_FILENAME_2="translated/FDOTHER.DAT"
set T_FILENAME_3="translated/FD2.EXE"
set S_FILENAME="TR_FDTXT.json"
set S_FILENAME_2="FDOTHER.DAT"
set S_FILENAME_3="FD2.EXE"
set TABLENAME="flamedragon2pcIns.tbl"
set SCRIPTNAME="flamedragon2pc"
flamedragon2pc_rebuild.py -i %S_FILENAME% -o %T_FILENAME% -t %TABLENAME%
del %T_FILENAME_3%
copy %S_FILENAME_3% %T_FILENAME_3%
java -jar Hextractor.jar -ih %SCRIPTNAME%_exe.hex %T_FILENAME_3%
del %T_FILENAME_2%
copy %S_FILENAME_2% %T_FILENAME_2%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME_2%
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/races.gfx" BC77
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/new_font.gfx" BFF7
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/classes.gfx" CFF7
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/town.gfx" DA77
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/spells.gfx" DC57
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/swords.gfx" E977
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/armors_1.gfx" EF77
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/main_items.gfx" F517
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/armors_2.gfx" 10097
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/armors_3.gfx" 10A97
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/armors_4.gfx" 11497
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/daggers_spears.gfx" 11E97
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/axes_bows.gfx" 12897
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/staffs_claws.gfx" 13297
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/mecha_others.gfx" 13C97
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/special_items.gfx" 14497
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/main_names.gfx" 14E97
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/enemies.gfx" 15937
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/long_en.gfx" 16AB7
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/name_class.gfx" D957
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/canaaniii.gfx" 18137
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/ch_4.gfx" BEF7
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/ch_12.gfx" F3D7
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/ch_1_2.gfx" CEB7
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/ch_8.gfx" 182F7
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/ch_7_9_10.gfx" 17D17
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/ch_3_5_6.gfx" 18AB7
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/ch_13_18.gfx" 18437
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/ch_21_24.gfx" 18957
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/ch_11_14-17_19_20.gfx" 18C37
java -jar Hextractor.jar -if %T_FILENAME_2% "gfx/ch_22_23_25-30.gfx" 19217
REM BEF7(8), F3D7(9), CEB7(10), 182F7(8), 17D17(21), 18AB7(138-12), 18437(10), 18957(10), 18C37(49), 19217(49)
REM 19837(30)
REM TOTAL 188

pause
