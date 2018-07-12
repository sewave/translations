@echo off 
set T_FILENAME="TR_True Lies (W) [!].gen"
set S_FILENAME="True Lies (W) [!].gen"
set SCRIPTNAME="trueliessmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
