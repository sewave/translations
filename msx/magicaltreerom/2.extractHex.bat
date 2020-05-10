@echo off
set T_FILENAME="TR_Magical Tree (1984) (Konami) (J).rom"
set SCRIPTNAME="magicaltreerom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 618:10
pause
