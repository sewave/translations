@echo off
set T_FILENAME="Senjou no Ookami II ~ Mercs (World).md"
set SCRIPTNAME="mercssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.ext %SCRIPTNAME%Alt2.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt3.tbl %T_FILENAME% %SCRIPTNAME%Alt3.ext %SCRIPTNAME%Alt3.off
REM nemdec.exe %T_FILENAME% gx000E4EE8_ExitShop.gfx E4EE8
REM nemdec.exe %T_FILENAME% gx00058554_TallFont.gfx 58554
REM nemdec.exe %T_FILENAME% gx00057D28_BigFewFont.gfx 57D28
nemdec.exe %T_FILENAME% gx00059BB8_ShootEnter.gfx 59BB8
nemdec.exe %T_FILENAME% gx000582AC_SmallFont.gfx 582AC
nemdec.exe %T_FILENAME% gx000589FA_BigFont.gfx 589FA
nemdec.exe %T_FILENAME% gx000591E0_StatusBar.gfx 591E0
pause
