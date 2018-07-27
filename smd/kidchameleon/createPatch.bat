@echo off 
set T_FILENAME="TR_Kid Chameleon (UE) [!].bin"
set S_FILENAME="Kid Chameleon (UE) [!].bin"
set SCRIPTNAME="kidchameleon"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
