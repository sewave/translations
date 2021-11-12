@echo off
set T_FILENAME="TR_Contra III - The Alien Wars (USA).sfc"
set S_FILENAME="Contra III - The Alien Wars (USA).sfc"
set SCRIPTNAME="contraiiithealienwarssfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% font_41D7E_mod_comp.gfx 41D7E
java -jar Hextractor.jar -if %T_FILENAME% intro_BB953_mod_comp.gfx BB953
java -jar Hextractor.jar -if %T_FILENAME% top_view_B3E91_mod_comp.gfx B3E91
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
