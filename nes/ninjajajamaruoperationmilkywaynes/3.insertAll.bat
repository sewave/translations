@echo off
set T_FILENAME="TR_Ninja JaJaMaru - Operation Milky Way (USA, Europe) (Ninja JaJaMaru Retro Collection) (Switch).nes"
set S_FILENAME="Ninja JaJaMaru - Operation Milky Way (USA, Europe) (Ninja JaJaMaru Retro Collection) (Switch).nes"
set SCRIPTNAME="ninjajajamaruoperationmilkywaynes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
pause
