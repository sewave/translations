@echo off
set T_FILENAME="TR_Kid Icarus (UE) [!].nes"
set S_FILENAME="Kid Icarus (UE) [!].nes"
set SCRIPTNAME="kidicarusnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
