@echo off
set T_FILENAME="TR_Castle of Illusion Starring Mickey Mouse (USA, Europe).md"
set S_FILENAME="Castle of Illusion Starring Mickey Mouse (USA, Europe).md"
set SCRIPTNAME="castleofillusionstarringmickeymousesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% gfx_000146DE_compr.dat 146DE
java -jar Hextractor.jar -if %T_FILENAME% gfx_00014500_compr.dat 14500
java -jar Hextractor.jar -if %T_FILENAME% gfx_0004C032_compr.dat 4C032
java -jar Hextractor.jar -if %T_FILENAME% gfx_00014980_compr.dat 14980
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
