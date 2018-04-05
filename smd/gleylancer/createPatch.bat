@echo off 
set T_FILENAME="TR_Gley Lancer (J) [T+ENG].gen"
set S_FILENAME="Gley Lancer (J) [!].gen"
set SCRIPTNAME="gleylancer"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
