@echo off
set T_FILENAME="TR_Tiny Toon Adventures (U) [!].nes"
set SCRIPTNAME="tinytoonadventuresnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2EDA0:50,32C20:40,32D20:40,32E20:10,3E210:200,3E940:40,3EB20:40,3F4C0:20,305A0:20,30DA0:20,315A0:20,31DA0:20,322A0:180
pause
