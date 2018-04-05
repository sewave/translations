@echo off
set T_FILENAME="TR_Adventures of Batman & Robin, The (U) [!].gg"
set S_FILENAME="Adventures of Batman & Robin, The (U) [!].gg"
set SCRIPTNAME="adventuresofbatmanrobinthegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
