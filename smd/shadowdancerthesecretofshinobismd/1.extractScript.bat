@echo off
set T_FILENAME="Shadow Dancer - The Secret of Shinobi (World) [EXP].md"
set SCRIPTNAME="shadowdancerthesecretofshinobismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.ext %SCRIPTNAME%Alt2.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt3.tbl %T_FILENAME% %SCRIPTNAME%Alt3.ext %SCRIPTNAME%Alt3.off
nemdec.exe %T_FILENAME% gfx0001E2C6_font.gfx 1E2C6
nemdec.exe %T_FILENAME% gfx0004243A_secret.gfx 4243A
nemdec.exe %T_FILENAME% gfx00054A06_pause.gfx 54A06
REM nemdec.exe %T_FILENAME% gx0005B63E_bigfont.gfx 5B63E
pause
