@echo off
set T_FILENAME="TR_Simpsons, The - Bartman Meets Radioactive Man (U) [!].gg"
set SCRIPTNAME="simpsonsthebartmanmeetsradioactivemangg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
