@echo off 
set T_FILENAME="TR_Spider-Man and Venom - Maximum Carnage (W) [!].bin"
set S_FILENAME="Spider-Man and Venom - Maximum Carnage (W) [!].bin"
set SCRIPTNAME="spvensmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
