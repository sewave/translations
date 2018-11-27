@echo off
set T_FILENAME="TR_Hammerin' Harry (E) [!].nes"
set S_FILENAME="Hammerin' Harry (E) [!].nes"
set SCRIPTNAME="hammerinharrynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
