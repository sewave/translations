@echo off 
set T_FILENAME="TR_Gaiares (JU) [!].gen"
set S_FILENAME="Gaiares (JU) [!].gen"
set SCRIPTNAME="gaiares"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
