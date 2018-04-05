@echo off 
set T_FILENAME="TR_Revenge of Shinobi, The (W) (REV00) [!].gen"
set S_FILENAME="Revenge of Shinobi, The (W) (REV00) [!].gen"
set SCRIPTNAME="revshin00"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
