@echo off
set T_FILENAME="TR_Snake Rattle N Roll (U) [!].nes"
set S_FILENAME="Snake Rattle N Roll (U) [!].nes"
set SCRIPTNAME="snakerattlenrollnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
