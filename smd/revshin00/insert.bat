@echo off 
set T_FILENAME="TR_Revenge of Shinobi, The (W) (REV00) [!].gen"
set S_FILENAME="Revenge of Shinobi, The (W) (REV00) [!].gen"
set SCRIPTNAME="revshin00"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause 
