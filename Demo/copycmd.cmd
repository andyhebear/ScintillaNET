echo 开始执行 >ret_copy.txt
set var=0
:continue
set /a var+=1
echo 第%var%次循环
 call :sub1 >>ret_copy.txt
if %var% lss 100 goto continue
echo 结束 
goto exit

:sub1 
copy IRobotQ_Ctl_1.exe IRobotQ_Ctl_0.exe
copy IRobotQ_Ctl_2.exe IRobotQ_Ctl_0.exe
goto:eof

:exit

pause

echo 结束 >>ret_copy.txt