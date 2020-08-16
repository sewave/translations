@echo off
set T_FILENAME="Jim Power - The Lost Dimension in 3D (USA).sfc"
set SCRIPTNAME="jimpowerthelostdimensionin3dsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
