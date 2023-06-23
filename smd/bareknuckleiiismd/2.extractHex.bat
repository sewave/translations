@echo off
set T_FILENAME="TR_Bare Knuckle III (Japan) [T+ENG].md"
set SCRIPTNAME="bareknuckleiiismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 24B472:D0

set S_FILENAME="Bare Knuckle III (Japan) [T+ENG].md"
nemdec.exe %S_FILENAME% upper_font_0026CDB8.gfx 26CDB8
nemdec.exe %S_FILENAME% letter_0027AE9A.gfx 27AE9A
pause
