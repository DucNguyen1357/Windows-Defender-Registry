@echo off
title Windows Defender Registry V1.0 By DucNguyen

::Chỉnh Cửa Sổ và màu
mode 90, 20

::Hiển thị Tiếng Việt
chcp 65001

::Menu
:Start
cls
title Windows Defender Registry V1.0 By DucNguyen - Options
echo.
echo:[92m                 Windows Defender Registry By DucNguyen [1m [0m
echo:[92m                 Phiên bản : 1.0 [1m [0m  
echo:[92m                 Công cụ tắt / bật Windows Denfender [1m [0m      
echo:            ____________________________________________________________________
echo:                   
echo:[93m                 Chọn 1 trong các tuỳ chọn dưới đây  [1m [0m 
echo:[93m                 Choose one of the options below  [1m [0m  
echo.                                 
echo:             [1] Tắt Windows Defender / Disable Windows Defender 
echo:             [2] Bật Windows Defender / Enable Windows Defender
echo:            ____________________________________________________________________
choice /C:12 /N
set _erl=%errorlevel%
if %_erl%==2 goto Enable
if %_erl%==1 goto Disable

::Tắt Defender
:Disable
cls
title Windows Defender Registry V1.0 By DucNguyen - Disable Anti Spyware
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Disable Realtime Monitoring
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Disable Anti Virus
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiVirus /t REG_DWORD /d 1 /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Disable Special Running Modes
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableSpecialRunningModes /t REG_DWORD /d 1 /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Disable Routinely Taking Action
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableRoutinelyTakingAction /t REG_DWORD /d 1 /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Service Keep Alive
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v ServiceKeepAlive /t REG_DWORD /d 0 /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Disable Behavior Monitoring
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /t REG_DWORD /d 1 /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Disable On Access Protection
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /t REG_DWORD /d 1 /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Disable Scan On Realtime Enable
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /t REG_DWORD /d 1 /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Disable Realtime Monitoring
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Force Update From MU
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v ForceUpdateFromMU /t REG_DWORD /d 0 /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Disable Block At First Seen
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v DisableBlockAtFirstSeen /t REG_DWORD /d 1 /f
echo:Done!
goto Finish1

::Bật Defender
:Enable
cls
title Windows Defender Registry V1.0 By DucNguyen - Enable Anti Spyware
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Enable Realtime Monitoring
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableRealtimeMonitoring /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Enable Anti Virus
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiVirus /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Enable Special Running Modes
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableSpecialRunningModes /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Enable Routinely Taking Action
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableRoutinelyTakingAction /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Service Keep Alive
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v ServiceKeepAlive /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Enable Behavior Monitoring
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Enable On Access Protection
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Enable Scan On Realtime Enable
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Enable Realtime Monitoring
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Force Update From MU
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Signature Updates" /v ForceUpdateFromMU /f
echo:Done!
title Windows Defender Registry V1.0 By DucNguyen - Enable Block At First Seen
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v DisableBlockAtFirstSeen /f
echo:Done!
goto Finish2

::Hoàn thành
:Finish1
title Windows Defender Registry V1.0 By DucNguyen - Done Disable
cls
echo:Done!
set msgTitle="Windows Defender Registry V1.0 By DucNguyen"
echo Wsh.Echo MsgBox("Successfully Disable Windows Defender!" + vbCrLf + "Restart to have a effect.",vbOKOnly,%msgTitle%) >tmp.vbs
for /f %%i in ('cscript tmp.vbs //nologo //e:vbscript') do (set "ret=%%i")
del /q tmp.vbs
goto End
:Finish2
title Windows Defender Registry V1.0 By DucNguyen - Done Enable
cls
echo:Done!
set msgTitle="Windows Defender Registry V1.0 By DucNguyen"
echo Wsh.Echo MsgBox("Successfully Enable Windows Defender!" + vbCrLf + "Restart to have a effect.",vbOKOnly,%msgTitle%) >tmp.vbs
for /f %%i in ('cscript tmp.vbs //nologo //e:vbscript') do (set "ret=%%i")
del /q tmp.vbs
goto End


::Kết thúc
:End
title Windows Defender Registry V1.0 By DucNguyen - Finish
cls
echo:[92m                 Windows Defender Registry By DucNguyen [1m [0m
echo:[92m                 Phiên bản : 1.0 [1m [0m  
echo:[92m                 Công cụ tắt / bật Windows Denfender [1m [0m      
echo:            ____________________________________________________________________
echo:                   
echo:[93m                 Áp dụng tuỳ chọn thành công!  [1m [0m 
echo:[93m                 Sau khi thay đổi sẽ tự động khởi động lại máy  [1m [0m  
echo:[93m                 Trước khi khởi động lại máy bạn phải thoát tất cả ứng dụng.  [1m [0m  
echo:[93m                 Bạn có muốn khởi động lại máy chứ ?  [1m [0m  
echo.                                 
echo:             [1] Có, khởi động lại máy.
echo:             [2] Không, tôi sẽ khởi động lại máy sau.
echo:            ____________________________________________________________________
choice /C:12 /N
set _erl=%errorlevel%
if %_erl%==2 goto UnReset
if %_erl%==1 goto Reset

::Tuỳ chọn khởi động lại máy tính
:Reset
cls
shutdown /r /t 30
echo:[92m                 Windows Defender Registry By DucNguyen [1m [0m
echo:[92m                 Phiên bản : 1.0 [1m [0m  
echo:[92m                 Công cụ tắt / bật Windows Denfender [1m [0m      
echo:            ____________________________________________________________________
echo:                   
echo:[93m              Máy tính của bạn sẽ tắt sau 30 giây nữa!  [1m [0m 
echo:[93m              Cảm ơn bạn đã sử dụng chương trình. [1m [0m  
echo:[93m              Bấm Enter để thoát.  [1m [0m  
echo:[93m              Nếu thấy công cụ này hay hãy Donate cho mình tại đây :  [1m [0m  
echo:[93m              https://ducnguyen.x10.bz/ducnguyensoftware/donate  [1m [0m  
echo:            ____________________________________________________________________
timeout /t 10
exit
:UnReset
cls
echo:[92m                 Windows Defender Registry By DucNguyen [1m [0m
echo:[92m                 Phiên bản : 1.0 [1m [0m  
echo:[92m                 Công cụ tắt / bật Windows Denfender [1m [0m      
echo:            ____________________________________________________________________
echo:                   
echo:[93m              Bạn đã huỷ tự động tắt máy tính!  [1m [0m 
echo:[93m              Cảm ơn bạn đã sử dụng chương trình.  [1m [0m  
echo:[93m              Hãy khởi động lại máy để có hiệu lực.  [1m [0m  
echo:[93m              Nếu thấy công cụ này hay hãy Donate cho mình tại đây :  [1m [0m  
echo:[93m              https://ducnguyen.x10.bz/ducnguyensoftware/donate  [1m [0m  
echo:            ____________________________________________________________________
timeout /t 10
exit
