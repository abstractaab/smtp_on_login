@echo off
set TO=techsupport@mydomain.se
set FROM=%computername%@mydomain.se
set SUBJECT="Login at %computername% by %username%"
set MSG="Login to %computername% made by %username% on %date% at %time:~0,8%"
set SMTP=smtp.mydomain.se

if not "%username%" == "admin" (
	@\\path\to\blat\blat.exe -to %TO% -f %FROM% -subject %SUBJECT% -server %SMTP% -body %MSG%
)
