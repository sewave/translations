@echo off
set T_FILENAME="TR_Ninja JaJaMaru - Operation Milky Way (USA, Europe) (Ninja JaJaMaru Retro Collection) (Switch).nes"
set S_FILENAME="Ninja JaJaMaru - Operation Milky Way (USA, Europe) (Ninja JaJaMaru Retro Collection) (Switch).nes"
set SCRIPTNAME="ninjajajamaruoperationmilkywaynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
