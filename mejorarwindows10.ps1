Agregar-Tipo -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application] :: EnableVisualStyles ()

$ ErrorActionPreference = 'Continuar silenciosamente'
$ wshell = Nuevo-Objeto -ComObject Wscript.Shell
$ Button = [System.Windows.MessageBoxButton] :: YesNoCancel
$ ErrorIco = [System.Windows.MessageBoxImage] :: Error
$ Ask = '¿Desea ejecutar esto como administrador?
        Seleccione "Sí" para ejecutar como administrador
        Seleccione "No" para no ejecutar esto como administrador
        
        Seleccione "Cancelar" para detener la secuencia de comandos. '

If (! ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity] :: GetCurrent ()). IsInRole ([Security.Principal.WindowsBuiltInRole] 'Administrador')) {
    $ Prompt = [System.Windows.MessageBox] :: Mostrar ($ Ask, "¿Ejecutar como administrador o no?", $ Button, $ ErrorIco) 
    Cambiar ($ Prompt) {
        # Esto eliminará Windows 10
        Sí {
            Write-Host "No ejecutó este script como administrador. Este script se elevará automáticamente para ejecutarse como administrador y continuar".
            Start-Process PowerShell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File` "{0}` "" -f $ PSCommandPath) -Verb RunAs
            Salida
        }
        No {
            Rotura
        }
    }
}

$ Form = New-Object system.Windows.Forms.Form
$ Form.ClientSize = New-Object System.Drawing.Point (1050,700)
$ Form.text = "Miguel Angulo Musayon"
$ Form.TopMost = $ false

$ Panel1 = Sistema de objetos nuevos.Windows.Forms.Panel
$ Panel1.height = 156
$ Panel1.width = 1032
$ Panel1.location = Nuevo objeto System.Drawing.Point (9,90)

$ Label1 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label1.text = "Instalación del programa"
$ Label1.AutoSize = $ verdadero
$ Label1.width = 25
$ Label1.height = 10
$ Label1.location = Nuevo objeto System.Drawing.Point (10,30)
$ Label1.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 30)

$ installchoco = New-Object system.Windows.Forms.Button
$ installchoco.text = "Instalar Chocolatey"
$ installchoco.width = 200
$ installchoco.height = 115
$ installchoco.location = Nuevo objeto System.Drawing.Point (16,19)
$ installchoco.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 16)

$ valiente = New-Object system.Windows.Forms.Button
$ brave.text = "Brave Browser"
$ brave.width = 150
$ valiente.altura = 30
$ brave.location = Nuevo objeto System.Drawing.Point (250,19)
$ brave.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ firefox = New-Object system.Windows.Forms.Button
$ firefox.text = "Firefox"
$ firefox.width = 150
$ firefox.height = 30
$ firefox.location = Nuevo objeto System.Drawing.Point (250,61)
$ firefox.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ 7zip = New-Object system.Windows.Forms.Button
$ 7zip.text = "7-Zip"
$ 7zip.width = 150
$ 7zip.altura = 30
$ 7zip.location = Nuevo objeto System.Drawing.Point (584,104)
$ 7zip.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ irfanview = New-Object system.Windows.Forms.Button
$ irfanview.text = "Irfanview"
$ irfanview.width = 150
$ irfanview.height = 30
$ irfanview.location = Nuevo objeto System.Drawing.Point (417,19)
$ irfanview.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ adobereader = New-Object system.Windows.Forms.Button
$ adobereader.text = "Adobe Reader DC"
$ adobereader.width = 150
$ adobereader.height = 30
$ adobereader.location = Nuevo objeto System.Drawing.Point (417,61)
$ adobereader.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ notepad = New-Object system.Windows.Forms.Button
$ notepad.text = "Bloc de notas ++"
$ notepad.width = 150
$ notepad.height = 30
$ notepad.location = New-Object System.Drawing.Point (417,104)
$ notepad.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ gchrome = New-Object system.Windows.Forms.Button
$ gchrome.text = "Google Chrome"
$ gchrome.width = 150
$ gchrome.height = 30
$ gchrome.location = Nuevo objeto System.Drawing.Point (250,104)
$ gchrome.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ mpc = New-Object system.Windows.Forms.Button
$ mpc.text = "Media Player Classic"
$ mpc.width = 150
$ mpc.altura = 30
$ mpc.location = Nuevo objeto System.Drawing.Point (584,61)
$ mpc.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ vlc = New-Object system.Windows.Forms.Button
$ vlc.text = "VLC"
$ vlc.width = 150
$ vlc.altura = 30
$ vlc.location = Nuevo objeto System.Drawing.Point (584,19)
$ vlc.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ powertoys = New-Object system.Windows.Forms.Button
$ powertoys.text = "PowerToys"
$ powertoys.width = 150
$ juguetes.altura = 30
$ powertoys.location = Nuevo objeto System.Drawing.Point (751,105)
$ powertoys.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ winterminal = New-Object system.Windows.Forms.Button
$ winterminal.text = "Terminal de Windows"
$ winterminal.width = 150
$ winterminal.height = 30
$ winterminal.location = Nuevo objeto System.Drawing.Point (751,61)
$ winterminal.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ vscode = New-Object system.Windows.Forms.Button
$ vscode.text = "Código VS"
$ vscode.width = 150
$ vscode.height = 30
$ vscode.location = Nuevo objeto System.Drawing.Point (751,19)
$ vscode.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ Label2 = New-Object system.Windows.Forms.Label
$ Label2.text = "(Chocolatey obligatorio para las instalaciones)"
$ Label2.AutoSize = $ true
$ Label2.width = 25
$ Etiqueta2.altura = 10
$ Label2.location = Nuevo objeto System.Drawing.Point (478,3)
$ Label2.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Panel2 = Sistema de objetos nuevos.Windows.Forms.Panel
$ Panel2.height = 159
$ Panel2.width = 588
$ Panel2.location = New-Object System.Drawing.Point (9,293)

$ Label3 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label3.text = "Ajustes del sistema"
$ Label3.AutoSize = $ true
$ Label3.width = 230
$ Etiqueta3.altura = 25
$ Label3.location = Nuevo objeto System.Drawing.Point (195,251)
$ Label3.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 24)

$ essentialtweaks = New-Object system.Windows.Forms.Button
$ essentialtweaks.text = "Ajustes esenciales"
$ essentialtweaks.width = 200
$ essentialtweaks.height = 115
$ essentialtweaks.location = Nuevo objeto System.Drawing.Point (24,34)
$ essentialtweaks.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 14)

$ backgroundapps = New-Object system.Windows.Forms.Button
$ backgroundapps.text = "Aplicaciones en segundo plano"
$ backgroundapps.width = 150
$ backgroundapps.height = 30
$ backgroundapps.location = Nuevo objeto System.Drawing.Point (251,45)
$ backgroundapps.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ cortana = New-Object system.Windows.Forms.Button
$ cortana.text = "Cortana"
$ cortana.width = 150
$ cortana.height = 30
$ cortana.location = New-Object System.Drawing.Point (251,82)
$ cortana.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ windowssearch = New-Object system.Windows.Forms.Button
$ windowssearch.text = "Búsqueda de Windows"
$ windowssearch.width = 150
$ windowssearch.height = 30
$ windowssearch.location = Nuevo objeto System.Drawing.Point (417,119)
$ windowssearch.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ actioncenter = New-Object system.Windows.Forms.Button
$ actioncenter.text = "Centro de actividades"
$ actioncenter.width = 150
$ actioncenter.height = 30
$ actioncenter.location = Nuevo objeto System.Drawing.Point (251,9)
$ actioncenter.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ darkmode = New-Object system.Windows.Forms.Button
$ darkmode.text = "Modo oscuro"
$ darkmode.width = 150
$ darkmode.height = 30
$ darkmode.location = Nuevo objeto System.Drawing.Point (417,7)
$ darkmode.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ visualfx = New-Object system.Windows.Forms.Button
$ visualfx.text = "Visual FX"
$ visualfx.width = 150
$ visualfx.height = 30
$ visualfx.location = Nuevo objeto System.Drawing.Point (417,82)
$ visualfx.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ onedrive = New-Object system.Windows.Forms.Button
$ onedrive.text = "OneDrive"
$ onedrive.width = 150
$ onedrive.height = 30
$ onedrive.location = Nuevo objeto System.Drawing.Point (251,119)
$ onedrive.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ Panel3 = Sistema de objetos nuevos.Windows.Forms.Panel
$ Panel3.height = 158
$ Panel3.width = 440
$ Panel3.location = New-Object System.Drawing.Point (601,293)

$ Label4 = New-Object system.Windows.Forms.Label
$ Label4.text = "Seguridad"
$ Label4.AutoSize = $ true
$ Label4.width = 117
$ Label4.height = 25
$ Label4.location = Nuevo objeto System.Drawing.Point (761,252)
$ Label4.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 24)

$ securitylow = New-Object system.Windows.Forms.Button
$ securitylow.text = "Bajo"
$ securitylow.width = 150
$ securitylow.height = 30
$ securitylow.location = Nuevo objeto System.Drawing.Point (36,119)
$ securitylow.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 15, [System.Drawing.FontStyle] ([System.Drawing.FontStyle] :: Bold))

$ securityhigh = New-Object system.Windows.Forms.Button
$ securityhigh.text = "Alto"
$ securityhigh.width = 150
$ securityhigh.height = 30
$ securityhigh.location = Nuevo objeto System.Drawing.Point (244,119)
$ securityhigh.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 15, [System.Drawing.FontStyle] ([System.Drawing.FontStyle] :: Bold))

$ Label5 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label5.text = "- Establecer UAC para que nunca se solicite"
$ Label5.AutoSize = $ true
$ Label5.width = 150
$ Etiqueta5.altura = 10
$ Label5.location = Nuevo objeto System.Drawing.Point (24,40)
$ Label5.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label6 = New-Object system.Windows.Forms.Label
$ Label6.text = "- Deshabilitar Windows Defender"
$ Label6.AutoSize = $ verdadero
$ Label6.width = 150
$ Etiqueta6.altura = 10
$ Label6.location = Nuevo objeto System.Drawing.Point (24,6)
$ Label6.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label7 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label7.text = "- Desactivar actualizaciones de Defender"
$ Label7.AutoSize = $ verdadero
$ Label7.width = 150
$ Label7.height = 10
$ Label7.location = Nuevo objeto System.Drawing.Point (24,23)
$ Label7.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label8 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label8.text = "- Deshabilitar el análisis de malware de Windows"
$ Label8.AutoSize = $ true
$ Label8.width = 150
$ Label8.height = 10
$ Label8.location = Nuevo objeto System.Drawing.Point (24,75)
$ Label8.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label9 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label9.text = "- Deshabilitar indicador de fusión"
$ Label9.AutoSize = $ true
$ Label9.width = 150
$ Label9.height = 10
$ Label9.location = Nuevo objeto System.Drawing.Point (24,58)
$ Label9.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label10 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label10.text = "- Establecer UAC en Preguntar siempre"
$ Label10.AutoSize = $ verdadero
$ Label10.width = 25
$ Etiqueta10.altura = 10
$ Label10.location = Nuevo objeto System.Drawing.Point (233,40)
$ Label10.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label11 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label11.text = "- Habilitar Windows Defender"
$ Label11.AutoSize = $ true
$ Label11.width = 25
$ Label11.height = 10
$ Label11.location = Nuevo objeto System.Drawing.Point (233,57)
$ Label11.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label12 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label12.text = "- Habilitar el análisis de malware de Windows"
$ Label12.AutoSize = $ verdadero
$ Label12.width = 25
$ Label12.height = 10
$ Label12.location = Nuevo objeto System.Drawing.Point (233,6)
$ Label12.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label13 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label13.text = "- Activar indicador Meltdown"
$ Label13.AutoSize = $ true
$ Label13.width = 25
$ Etiqueta13.altura = 10
$ Label13.location = Nuevo objeto System.Drawing.Point (233,23)
$ Label13.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label15 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label15.text = "Actualización de Windows"
$ Label15.AutoSize = $ verdadero
$ Label15.width = 25
$ Etiqueta15.altura = 10
$ Label15.location = Nuevo objeto System.Drawing.Point (58,459)
$ Label15.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 24)

$ Panel4 = Sistema de objetos nuevos.Windows.Forms.Panel
$ Panel4.altura = 168
$ Panel4.width = 340
$ Panel4.location = New-Object System.Drawing.Point (9,491)

$ defaultwindowsupdate = New-Object system.Windows.Forms.Button
$ defaultwindowsupdate.text = "Configuración predeterminada"
$ defaultwindowsupdate.width = 300
$ defaultwindowsupdate.height = 30
$ defaultwindowsupdate.location = New-Object System.Drawing.Point (20,13)
$ defaultwindowsupdate.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 14)

$ securitywindowsupdate = New-Object system.Windows.Forms.Button
$ securitywindowsupdate.text = "Solo actualizaciones de seguridad"
$ securitywindowsupdate.width = 300
$ securitywindowsupdate.height = 30
$ securitywindowsupdate.location = Nuevo objeto System.Drawing.Point (20,119)
$ securitywindowsupdate.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 14)

$ Label16 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label16.text = "Recomiendo hacer solo actualizaciones de seguridad".
$ Label16.AutoSize = $ verdadero
$ Label16.width = 25
$ Etiqueta16.altura = 10
$ Label16.location = Nuevo objeto System.Drawing.Point (47,49)
$ Label16.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label17 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label17.text = "- Retrasa las actualizaciones de funciones hasta 3 años"
$ Label17.AutoSize = $ verdadero
$ Label17.width = 25
$ Etiqueta17.altura = 10
$ Label17.location = Nuevo objeto System.Drawing.Point (71,66)
$ Label17.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label18 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label18.text = "- Retrasa las actualizaciones de seguridad 4 días"
$ Label18.AutoSize = $ true
$ Label18.width = 25
$ Label18.height = 10
$ Label18.location = Nuevo objeto System.Drawing.Point (71,84)
$ Label18.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label19 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label19.text = "- Establece el tiempo activo máximo"
$ Label19.AutoSize = $ true
$ Label19.width = 25
$ Label19.height = 10
$ Label19.location = Nuevo objeto System.Drawing.Point (71,103)
$ Label19.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label20 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label20.text = "Instrucciones"
$ Label20.AutoSize = $ verdadero
$ Label20.width = 169
$ Etiqueta20.altura = 23
$ Label20.location = Nuevo objeto System.Drawing.Point (581,463)
$ Label20.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 24)

$ Label21 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label21.text = "- ¡Esto modificará su sistema y le recomiendo hacer una copia de seguridad de todos los datos que tenga antes de ejecutar!"
$ Label21.AutoSize = $ verdadero
$ Label21.width = 150
$ Label21.height = 10
$ Label21.location = Nuevo objeto System.Drawing.Point (390,507)
$ Label21.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label22 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label22.text = "(¿¡No estás seguro!? ... Solo aplica los ajustes esenciales)"
$ Label22.AutoSize = $ verdadero
$ Label22.width = 150
$ Etiqueta22.altura = 10
$ Label22.location = Nuevo objeto System.Drawing.Point (4,14)
$ Label22.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ Label23 = Sistema de objeto nuevo.Windows.Forms.Label
$ Label23.text = "- ¿Necesita restaurar el centro de acción, cortana, etc.? Ejecute el script de restauración: https://youtu.be/H2ydDcqRZyM"
$ Label23.AutoSize = $ verdadero
$ Label23.width = 150
$ Etiqueta23.altura = 10
$ Label23.location = Nuevo objeto System.Drawing.Point (390,529)
$ Label23.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 10)

$ PictureBox1 = Sistema de objetos nuevos.Windows.Forms.PictureBox
$ PictureBox1.width = 412
$ PictureBox1.height = 125
$ PictureBox1.location = Nuevo objeto System.Drawing.Point (449,541)
$ PictureBox1.imageLocation = "https://christitus.com/images/titus-toolbox.png"
$ PictureBox1.SizeMode = [System.Windows.Forms.PictureBoxSizeMode] :: zoom
$ lightmode = New-Object system.Windows.Forms.Button
$ lightmode.text = "Modo de luz"
$ lightmode.width = 150
$ lightmode.height = 30
$ lightmode.location = New-Object System.Drawing.Point (417,45)
$ lightmode.Font = New-Object System.Drawing.Font ('Microsoft Sans Serif', 12)

$ Form.controls.AddRange (@ ($ Panel1, $ Label1, $ Panel2, $ Label3, $ Panel3, $ Label4, $ Label15, $ Panel4, $ Label20, $ Label21, $ Label23, $ PictureBox1))
$ Panel1.controls.AddRange (@ ($ installchoco, $ brave, $ firefox, $ 7zip, $ irfanview, $ adobereader, $ notepad, $ gchrome, $ mpc, $ vlc, $ powertoys, $ winterminal, $ vscode, $ Label2 ))
$ Panel2.controls.AddRange (@ ($ essentialtweaks, $ backgroundapps, $ cortana, $ windowssearch, $ actioncenter, $ darkmode, $ visualfx, $ onedrive, $ Label22, $ lightmode))
$ Panel3.controls.AddRange (@ ($ seguridad baja, $ seguridad alta, $ Etiqueta5, $ Etiqueta6, $ Etiqueta7, $ Etiqueta8, $ Etiqueta9, $ Etiqueta10, $ Etiqueta11, $ Etiqueta12, $ Etiqueta13))
$ Panel4.controls.AddRange (@ ($ defaultwindowsupdate, $ securitywindowsupdate, $ Label16, $ Label17, $ Label18, $ Label19))


$ installchoco.Add_Click ({ 
    Write-Host "Instalación de Chocolatey"
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager] :: SecurityProtocol = [System.Net.ServicePointManager] :: SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient) .DownloadString ('https://chocolatey.org/install.ps1'))
	choco instalar chocolatey-core.extension -y
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ valiente.Add_Click ({ 
	Write-Host "Instalación de Brave Browser"
	choco instalar valiente -y
	    $ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)	
})

$ firefox.Add_Click ({ 
    Write-Host "Instalación de Firefox"
    choco instalar firefox -y
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ gchrome.Add_Click ({ 
    Write-Host "Instalación de Google Chrome"
    choco instalar googlechrome -y
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ irfanview.Add_Click ({ 
    Write-Host "Instalación de Irfanview (visor de imágenes)"
    choco instalar irfanview -y
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ adobereader.Add_Click ({ 
    Write-Host "Instalación de Adobe Reader DC"
    choco instalar adobereader -y
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ notepad.Add_Click ({ 
    Write-Host "Instalación de Notepad ++"
    choco instalar notepadplusplus -y
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ vlc.Add_Click ({ 
    Write-Host "Instalación de VLC Media Player"
    choco instalar vlc -y
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ mpc.Add_Click ({ 
    Write-Host "Instalación de Media Player Classic"
    choco instalar mpc-be -y
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ 7zip.Add_Click ({ 
    Write-Host "Instalación de la herramienta de compresión 7-Zip"
    choco install 7zip -y
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ vscode.Add_Click ({ 
    Write-Host "Instalación de código de Visual Studio"
    choco instalar vscode -y
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ winterminal.Add_Click ({ 
    Write-Host "Instalación de una nueva terminal de Windows"
    choco instalar microsoft-windows-terminal -y
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ powertoys.Add_Click ({ 
    Write-Host "Instalación de Microsoft PowerToys"
    choco install powertoys -y
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ essentialtweaks.Add_Click ({ 
    Write-Host "Creando un punto de restauración en caso de que ocurra algo malo"
    Enable-ComputerRestore -Drive "C: \"
    Checkpoint-Computer -Descripción "RestorePoint1" -RestorePointType "MODIFY_SETTINGS"

	Write-Host "Ejecutando O&O Shutup con la configuración recomendada"
    Importar-Módulo BitsTransfer choco instalar shutup10 -y
	Start-BitsTransfer -Source "https://raw.githubusercontent.com/ChrisTitusTech/win10script/master/ooshutup10.cfg" -Destination ooshutup10.cfg OOSU10 ooshutup10.cfg / quiet
	Start-BitsTransfer -Source "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -Destination OOSU10.exe	
	./OOSU10.exe ooshutup10.cfg / quiet

    Write-Host "Desactivación de la telemetría ..."
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Policies \ DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Wow6432Node \ Microsoft \ Windows \ CurrentVersion \ Policies \ DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
	Disable-ScheduledTask -TaskName "Evaluador de compatibilidad de Microsoft \ Windows \ Application Experience \ Microsoft" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft \ Windows \ Application Experience \ ProgramDataUpdater" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft \ Windows \ Autochk \ Proxy" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft \ Windows \ Programa de mejora de la experiencia del cliente \ Consolidador" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft \ Windows \ Programa de mejora de la experiencia del cliente \ UsbCeip" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft \ Windows \ DiskDiagnostic \ Microsoft-Windows-DiskDiagnosticDataCollector" | Out-Null
    Write-Host "Desactivando las sugerencias de aplicaciones ..."
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ ContentDeliveryManager" -Name "ContentDeliveryAllowed" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ ContentDeliveryManager" -Name "OemPreInstalledAppsEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ ContentDeliveryManager" -Name "PreInstalledAppsEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ ContentDeliveryManager" -Name "PreInstalledAppsEverEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ ContentDeliveryManager" -Name "SilentInstalledAppsEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ Software \ Microsoft \ Windows \ CurrentVersion \ ContentDeliveryManager" -Name "SubscriptionsContent-338387Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ ContentDeliveryManager" -Name "SubscriptionsContent-338388Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ ContentDeliveryManager" -Name "SubsignedContent-338389Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ ContentDeliveryManager" -Name "SubscriptionsContent-353698Enabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ ContentDeliveryManager" -Name "SystemPaneSuggestionsEnabled" -Type DWord -Value 0
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ CloudContent")) {
		Nuevo elemento -Ruta "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ CloudContent" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ CloudContent" -Name "DisableWindowsConsumerFeatures" -Type DWord -Value 1
    Write-Host "Desactivación del historial de actividades ..."
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ System" -Name "EnableActivityFeed" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ System" -Name "PublishUserActivities" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ System" -Name "UploadUserActivities" -Type DWord -Value 0
    Write-Host "Deshabilitando el seguimiento de ubicación ..."
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ CapabilityAccessManager \ ConsentStore \ location")) {
		Nuevo elemento -Ruta "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ CapabilityAccessManager \ ConsentStore \ location" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ CapabilityAccessManager \ ConsentStore \ location" -Name "Value" -Type String -Value "Deny"
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows NT \ CurrentVersion \ Sensor \ Overrides \ {BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM: \ SYSTEM \ CurrentControlSet \ Services \ lfsvc \ Service \ Configuration" -Name "Status" -Type DWord -Value 0
    Write-Host "Deshabilitando las actualizaciones automáticas de mapas ..."
	Set-ItemProperty -Path "HKLM: \ SYSTEM \ Maps" -Name "AutoUpdateEnabled" -Type DWord -Value 0
    Write-Host "Desactivación de comentarios ..."
	Si (! (Ruta de prueba "HKCU: \ SOFTWARE \ Microsoft \ Siuf \ Rules")) {
		Nuevo elemento -Ruta "HKCU: \ SOFTWARE \ Microsoft \ Siuf \ Rules" -Fuerza | Out-Null
	}
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Siuf \ Rules" -Name "NumberOfSIUFInPeriod" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ DataCollection" -Name "DoNotShowFeedbackNotifications" -Type DWord -Value 1
	Disable-ScheduledTask -TaskName "Microsoft \ Windows \ Feedback \ Siuf \ DmClient" -ErrorAction SilentlyContinue | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft \ Windows \ Feedback \ Siuf \ DmClientOnScenarioDownload" -ErrorAction SilentlyContinue | Out-Null
    Write-Host "Desactivación de experiencias personalizadas ..."
	Si (! (Ruta de prueba "HKCU: \ SOFTWARE \ Policies \ Microsoft \ Windows \ CloudContent")) {
		Nuevo elemento -Ruta "HKCU: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ CloudContent" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Policies \ Microsoft \ Windows \ CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 1
    Write-Host "Deshabilitando ID de publicidad ..."
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ AdvertisingInfo")) {
		New-Item -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ AdvertisingInfo" | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 1
    Write-Host "Desactivación de informes de errores ..."
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ Windows Error Reporting" -Name "Disabled" -Type DWord -Value 1
	Disable-ScheduledTask -TaskName "Microsoft \ Windows \ Windows Error Reporting \ QueueReporting" | Out-Null
    Write-Host "Restringiendo Windows Update P2P solo a la red local ..."
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ DeliveryOptimization \ Config")) {
		New-Item -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ DeliveryOptimization \ Config" | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ DeliveryOptimization \ Config" -Name "DODownloadMode" -Type DWord -Value 1
    Write-Host "Deteniendo y deshabilitando el servicio de seguimiento de diagnósticos ..."
	Stop-Service "DiagTrack" -WarningAction SilentlyContinue
	Set-Service "DiagTrack" -StartupType deshabilitado
    Write-Host "Deteniendo y deshabilitando el servicio WAP Push ..."
	Stop-Service "dmwappushservice" -WarningAction SilentlyContinue
	Set-Service "dmwappushservice" -StartupType deshabilitado
    Write-Host "Habilitando las opciones del menú de inicio de F8 ..."
	bcdedit / set `{current`} bootmenupolicy Legacy | Out-Null
    Write-Host "Deteniendo y deshabilitando los servicios de Home Groups ..."
	Detener el servicio "HomeGroupListener" -WarningAction SilentlyContinue
	Set-Service "HomeGroupListener" -StartupType deshabilitado
	Detener el servicio "HomeGroupProvider" -WarningAction SilentlyContinue
	Set-Service "HomeGroupProvider" -StartupType deshabilitado
    Write-Host "Desactivación de la asistencia remota ..."
	Set-ItemProperty -Path "HKLM: \ SYSTEM \ CurrentControlSet \ Control \ Remote Assistance" -Name "fAllowToGetHelp" -Type DWord -Value 0
    Write-Host "Desactivación del sensor de almacenamiento ..."
	Remove-Item -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ StorageSense \ Parameters \ StoragePolicy" -Recurse -ErrorAction SilentlyContinue
    Write-Host "Deteniendo y deshabilitando el servicio Superfetch ..."
	Detener el servicio "SysMain" -WarningAction SilentlyContinue
	Set-Service "SysMain" -StartupType deshabilitado
    Write-Host "Configurando la hora del BIOS en UTC ..."
	Set-ItemProperty -Path "HKLM: \ SYSTEM \ CurrentControlSet \ Control \ TimeZoneInformation" -Name "RealTimeIsUniversal" -Type DWord -Value 1
    Write-Host "Desactivación de la hibernación ..."
	Set-ItemProperty -Path "HKLM: \ System \ CurrentControlSet \ Control \ Session Manager \ Power" -Name "HibernteEnabled" -Type Dword -Value 0
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Explorer \ FlyoutMenuSettings")) {
		New-Item -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Explorer \ FlyoutMenuSettings" | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Explorer \ FlyoutMenuSettings" -Name "ShowHibernateOption" -Type Dword -Value 0
    Write-Host "Mostrando detalles del administrador de tareas ..."
	$ taskmgr = Start-Process -WindowStyle Hidden -FilePath taskmgr.exe -PassThru
	Hacer {
		Inicio-Sueño-Milisegundos 100
		$ preferencias = Get-ItemProperty -Path "HKCU: \ Software \ Microsoft \ Windows \ CurrentVersion \ TaskManager" -Name "Preferences" -ErrorAction SilentlyContinue
	} Hasta ($ preferencias)
	Detener proceso $ taskmgr
	$ preferencias.Preferencias [28] = 0
	Set-ItemProperty -Path "HKCU: \ Software \ Microsoft \ Windows \ CurrentVersion \ TaskManager" -Name "Preferences" -Type Binary -Value $ preferencias.
    Write-Host "Mostrando detalles de operaciones de archivo ..."
	Si (! (Ruta de prueba "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Explorer \ OperationStatusManager")) {
		New-Item -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Explorer \ OperationStatusManager" | Out-Null
	}
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Explorer \ OperationStatusManager" -Name "EnthusiastMode" -Type DWord -Value 1
    Write-Host "Ocultar el botón Vista de tareas ..."
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Explorer \ Advanced" -Name "ShowTaskViewButton" -Type DWord -Value 0
    Write-Host "Ocultar icono de personas ..."
	Si (! (Ruta de prueba "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Explorer \ Advanced \ People")) {
		New-Item -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Explorer \ Advanced \ People" | Out-Null
	}
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Explorer \ Advanced \ People" -Name "PeopleBand" -Type DWord -Value 0
    Write-Host "Mostrando todos los iconos de la bandeja ..."
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Explorer" -Nombre "EnableAutoTray" -Tipo DWord -Value 0
	Write-Host "Habilitando NumLock después del inicio ..."
	Si (! (Test-Path "HKU:")) {
		New-PSDrive -Name HKU -PSProvider Registry -Root HKEY_USERS | Out-Null
	}
	Set-ItemProperty -Path "HKU: \. DEFAULT \ Control Panel \ Keyboard" -Name "InitialKeyboardIndicators" -Type DWord -Value 2147483650
	Agregar-Tipo -AssemblyName System.Windows.Forms
	Si (! ([System.Windows.Forms.Control] :: IsKeyLocked ('NumLock'))) {
		$ wsh = Nuevo-Objeto -ComObject WScript.Shell
		$ wsh.SendKeys ('{NUMLOCK}')
	}

    Write-Host "Cambiando la vista predeterminada del Explorador a esta PC ..."
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Explorer \ Advanced" -Name "LaunchTo" -Type DWord -Value 1
    Write-Host "Ocultando el icono de objetos 3D de esta PC ..."
	Eliminar elemento -Ruta "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Explorer \ MyComputer \ NameSpace \ {0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" -Recurse -ErrorAction SilentlyContinue

$ Bloatware = @ (

        #Aplicaciones AppX de Windows 10 innecesarias
        "Microsoft.3DBuilder"
        "Microsoft.AppConnector"
	    "Microsoft.BingFinance"
	    "Microsoft.BingNews"
	    "Microsoft.BingSports"
	    "Microsoft.BingTranslator"
	    "Microsoft.BingWeather"
        "Microsoft.GetHelp"
        "Microsoft.Getstarted"
        "Microsoft.Messaging"
        "Microsoft.Microsoft3DViewer"
        "Microsoft.MicrosoftSolitaireCollection"
        "Microsoft.NetworkSpeedTest"
        "Microsoft.News"
        "Microsoft.Office.Lens"
        "Microsoft.Office.Sway"
        "Microsoft.OneConnect"
        "Microsoft.People"
        "Microsoft.Print3D"
        "Microsoft.SkypeApp"
        "Microsoft.StorePurchaseApp"
        "Microsoft.Wallet"
        "Microsoft.Whiteboard"
        "Microsoft.WindowsAlarms"
        "microsoft.windowscommunicationsapps"
        "Microsoft.WindowsFeedbackHub"
        "Microsoft.WindowsMaps"
        "Microsoft.WindowsSoundRecorder"
        "Microsoft.ZuneMusic"
        "Microsoft.ZuneVideo"

        #Aplicaciones patrocinadas de Windows 10 AppX
        #Añadir aplicaciones patrocinadas / destacadas para eliminar en el formato "* AppName *"
        "* EclipseManager *"
        "* ActiproSoftwareLLC *"
        "* AdobeSystemsIncorporated.AdobePhotoshopExpress *"
        "* Duolingo-LearnLanguagesforFree *"
        "* PandoraMediaInc *"
        "*Candy Crush*"
        "* BubbleWitch3Saga *"
        "* Wunderlist *"
        "* Flipboard *"
        "*Gorjeo*"
        "*Facebook*"
        "* Royal Revolt *"
        "*Influencia*"
        "* Prueba de velocidad *"
        "* Dolby *"
        "* Viber *"
        "* ACGMediaPlayer *"
        "* Netflix *"
        "* OneCalendar *"
        "* LinkedIn para Windows *"
        "* HiddenCityMysteryofShadows *"
        "* Hulu *"
        "* HiddenCity *"
        "* AdobePhotoshopExpress *"
                     
        #Opcional: normalmente no se elimina, pero puede hacerlo si lo necesita por algún motivo
        # "* Microsoft.Advertising.Xaml_10.1712.5.0_x64__8wekyb3d8bbwe *"
        # "* Microsoft.Advertising.Xaml_10.1712.5.0_x86__8wekyb3d8bbwe *"
        # "* Microsoft.BingWeather *"
        # "* Microsoft.MSPaint *"
        # "* Microsoft.MicrosoftStickyNotes *"
        # "* Microsoft.Windows.Photos *"
        # "* Microsoft.WindowsCalculator *"
        # "* Microsoft.WindowsStore *"
    )
    foreach ($ Bloat en $ Bloatware) {
        Get-AppxPackage -Name $ Bloat | Eliminar-AppxPackage
        Get-AppxProvisionedPackage -Online | Where-Object DisplayName -como $ Bloat | Remove-AppxProvisionedPackage -Online
        Write-Host "Intentando eliminar $ Bloat".
    }

    Write-Host "Instalación de Windows Media Player ..."
	Enable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer" -NoRestart -WarningAction SilentlyContinue | Out-Null

    #Evita que Edge se convierta en el visor de .PDF predeterminado    
    Write-Host "Evitar que Edge asuma el control como visor .PDF predeterminado"
	# Identificar la clase de aplicación de borde 
	$ Packages = "HKCU: SOFTWARE \ Classes \ Local Settings \ Software \ Microsoft \ Windows \ CurrentVersion \ AppModel \ Repository \ Packages" 
	$ edge = Get-ChildItem $ Paquetes -Recurse -incluye "MicrosoftEdge" 
		
	# Especifique las rutas al archivo y las asociaciones de URL 
	$ FileAssocKey = Join-Path $ edge.PSPath Capabilities \ FileAssociations 
	$ URLAssocKey = Join-Path $ edge.PSPath Capabilities \ URLAssociations 
		
	# obtenga las clases de software para los tipos de archivos y URL que Edge asociará 
	$ FileTypes = Obtener elemento $ FileAssocKey 
	$ URLTypes = Obtener artículo $ URLAssocKey 
		
	$ FileAssoc = Get-ItemProperty $ FileAssocKey 
	$ URLAssoc = Get-ItemProperty $ URLAssocKey 
		
	$ Asociaciones = @ () 
	$ Filetypes.Property | foreach {$ Asociaciones + = $ FileAssoc. $ _}
	$ URLTypes.Property | foreach {$ Asociaciones + = $ URLAssoc. $ _}
		
	# agregue valores de registro en cada clase de software para evitar que el borde se asocie como predeterminado 
	foreach ($ Asociación en $ Asociaciones) 
			{ 
			$ Class = Join-Path HKCU: SOFTWARE \ Classes $ Association 
			#if (ruta de prueba $ clase) 
			# {write-host $ Association} 
			# Get-Item $ Class 
			Set-ItemProperty $ Class -Name NoOpenWith -Value "" 
			Set-ItemProperty $ Class -Name NoStaticDefaultVerb -Value "" 
			} 
            
    
    # Elimina cosas de Paint3D del menú contextual
$ Paint3Dstuff = @ (
        "HKCR: \ SystemFileAssociations \ .3mf \ Shell \ 3D Edit"
	"HKCR: \ SystemFileAssociations \ .bmp \ Shell \ 3D Edit"
	"HKCR: \ SystemFileAssociations \ .fbx \ Shell \ 3D Edit"
	"HKCR: \ SystemFileAssociations \ .gif \ Shell \ 3D Edit"
	"HKCR: \ SystemFileAssociations \ .jfif \ Shell \ 3D Edit"
	"HKCR: \ SystemFileAssociations \ .jpe \ Shell \ 3D Edit"
	"HKCR: \ SystemFileAssociations \ .jpeg \ Shell \ 3D Edit"
	"HKCR: \ SystemFileAssociations \ .jpg \ Shell \ 3D Edit"
	"HKCR: \ SystemFileAssociations \ .png \ Shell \ 3D Edit"
	"HKCR: \ SystemFileAssociations \ .tif \ Shell \ 3D Edit"
	"HKCR: \ SystemFileAssociations \ .tiff \ Shell \ 3D Edit"
    )
    # Cambie el nombre de la clave de registro para eliminarla, por lo que es reversible
    foreach ($ Paint3D en $ Paint3Dstuff) {
        Si (Ruta de prueba $ Paint3D) {
	    $ rmPaint3D = $ Paint3D + "_"
	    Conjunto de elementos $ Paint3D $ rmPaint3D
	}
    }
    
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ windowssearch.Add_Click ({ 
    Write-Host "Deshabilitando la búsqueda de Bing en el menú Inicio ..."
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Search" -Name "BingSearchEnabled" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Search" -Name "CortanaConsent" -Type DWord -Value 0
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ Búsqueda de Windows")) {
		Nuevo elemento -Ruta "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ Búsqueda de Windows" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ Windows Search" -Name "DisableWebSearch" -Type DWord -Value 1
    Write-Host "Deteniendo y deshabilitando el servicio de indexación de búsqueda de Windows ..."
	Detener el servicio "WSearch" -WarningAction SilentlyContinue
	Set-Service "WSearch" -StartupType deshabilitado
    Write-Host "Ocultar el icono / cuadro de búsqueda de la barra de tareas ..."
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Search" -Name "SearchboxTaskbarMode" -Type DWord -Value 0
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ backgroundapps.Add_Click ({ 
    Write-Host "Deshabilitando el acceso a la aplicación en segundo plano ..."
	Get-ChildItem -Path "HKCU: \ Software \ Microsoft \ Windows \ CurrentVersion \ BackgroundAccessApplications" -Excluir "Microsoft.Windows.Cortana *" | Para cada {
		Set-ItemProperty -Path $ _. PsPath -Name "Disabled" -Type DWord -Value 1
		Set-ItemProperty -Path $ _. PsPath -Name "DisabledByUser" -Type DWord -Value 1
	}
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ cortana.Add_Click ({ 
    Write-Host "Deshabilitando Cortana ..."
	Si (! (Ruta de prueba "HKCU: \ SOFTWARE \ Microsoft \ Personalización \ Configuración")) {
		Nuevo elemento -Ruta "HKCU: \ SOFTWARE \ Microsoft \ Personalización \ Configuración" -Fuerza | Out-Null
	}
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Personalización \ Configuración" -Nombre "AcceptedPrivacyPolicy" -Tipo DWord -Value 0
	Si (! (Ruta de prueba "HKCU: \ SOFTWARE \ Microsoft \ InputPersonalization")) {
		Nuevo elemento -Ruta "HKCU: \ SOFTWARE \ Microsoft \ InputPersonalization" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ InputPersonalization" -Name "RestrictImplicitTextCollection" -Type DWord -Value 1
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ InputPersonalization" -Name "RestrictImplicitInkCollection" -Type DWord -Value 1
	Si (! (Ruta de prueba "HKCU: \ SOFTWARE \ Microsoft \ InputPersonalization \ TrainedDataStore")) {
		Nuevo elemento -Ruta "HKCU: \ SOFTWARE \ Microsoft \ InputPersonalization \ TrainedDataStore" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ InputPersonalization \ TrainedDataStore" -Name "HarvestContacts" -Type DWord -Value 0
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ Búsqueda de Windows")) {
		Nuevo elemento -Ruta "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ Búsqueda de Windows" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ Windows Search" -Name "AllowCortana" -Type DWord -Value 0
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ securitylow.Add_Click ({ 
    Write-Host "Reduciendo el nivel de UAC ..."
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Policies \ System" -Name "ConsentPromptBehaviorAdmin" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Policies \ System" -Name "PromptOnSecureDesktop" -Type DWord -Value 0
    Write-Host "Deshabilitando Windows Defender ..."
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows Defender")) {
		Nuevo elemento -Ruta "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows Defender" -Fuerza | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows Defender" -Name "DisableAntiSpyware" -Type DWord -Value 1
	Si ([System.Environment] :: OSVersion.Version.Build -eq 14393) {
		Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Run" -Name "WindowsDefender" -ErrorAction SilentlyContinue
	} ElseIf ([System.Environment] :: OSVersion.Version.Build -ge 15063) {
		Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Run" -Name "SecurityHealth" -ErrorAction SilentlyContinue
	}
    Write-Host "Desactivación de la nube de Windows Defender ..."
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows Defender \ Spynet")) {
		Nuevo elemento -Ruta "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows Defender \ Spynet" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows Defender \ Spynet" -Name "SpynetReporting" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows Defender \ Spynet" -Name "SubmitSamplesConsent" -Type DWord -Value 2
    Write-Host "Desactivación del indicador de compatibilidad Meltdown (CVE-2017-5754) ..."
	Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ QualityCompat" -Name "cadca5fe-87d3-4b96-b7fb-a231484277cc" -ErrorAction SilentlyContinue
    Write-Host "Desactivación de la oferta de la herramienta de eliminación de software malintencionado ..."
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ MRT")) {
		Nuevo elemento-Ruta "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ MRT" | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ MRT" -Name "DontOfferThroughWUAU" -Type DWord -Value 1
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ securityhigh.Add_Click ({ 
    Write-Host "Elevando el nivel de UAC ..."
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Policies \ System" -Name "ConsentPromptBehaviorAdmin" -Type DWord -Value 5
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Policies \ System" -Name "PromptOnSecureDesktop" -Type DWord -Value 1
    Write-Host "Deshabilitando el protocolo SMB 1.0 ..."
	Set-SmbServerConfiguration -EnableSMB1Protocol $ false -Force
    Write-Host "Habilitando Windows Defender ..."
	Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows Defender" -Name "DisableAntiSpyware" -ErrorAction SilentlyContinue
	Si ([System.Environment] :: OSVersion.Version.Build -eq 14393) {
		Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Run" -Name "WindowsDefender" -Type ExpandString -Value "` "% ProgramFiles% \ Windows Defender \ MSASCuiL.exe`" "
	} ElseIf ([System.Environment] :: OSVersion.Version.Build -ge 15063) {
		Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Run" -Name "SecurityHealth" -Type ExpandString -Value "` "% ProgramFiles% \ Windows Defender \ MSASCuiL.exe`" "
	}
    Write-Host "Habilitando la nube de Windows Defender ..."
	Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows Defender \ Spynet" -Name "SpynetReporting" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows Defender \ Spynet" -Name "SubmitSamplesConsent" -ErrorAction SilentlyContinue
    Write-Host "Deshabilitando Windows Script Host ..."
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows Script Host \ Settings" -Name "Enabled" -Type DWord -Value 0
    Write-Host "Habilitando el indicador de compatibilidad Meltdown (CVE-2017-5754) ..."
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ QualityCompat")) {
		New-Item -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ QualityCompat" | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ QualityCompat" -Name "cadca5fe-87d3-4b96-b7fb-a231484277cc" -Type DWord -Value 0
    Write-Host "Habilitando la oferta de la herramienta de eliminación de software malintencionado ..."
	Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ MRT" -Name "DontOfferThroughWUAU" -ErrorAction SilentlyContinue
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ defaultwindowsupdate.Add_Click ({ 
    Write-Host "Habilitando la oferta de controladores a través de Windows Update ..."
	Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ DriverSearching" -Name "DontPromptForWindowsUpdate" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ DriverSearching" -Name "DontSearchWindowsUpdate" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -ErrorAction SilentlyContinue
    Write-Host "Habilitando el reinicio automático de Windows Update ..."
	Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ WindowsUpdate \ AU" -Name "NoAutoRebootWithLoggedOnUsers" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ WindowsUpdate \ AU" -Name "AUPowerManagement" -ErrorAction SilentlyContinue
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ securitywindowsupdate.Add_Click ({ 
    Write-Host "Desactivación de la oferta de controladores a través de Windows Update ..."
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ Metadatos del dispositivo")) {
		Nuevo elemento -Ruta "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ Metadatos del dispositivo" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ DriverSearching")) {
		Nuevo elemento -Ruta "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ DriverSearching" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ DriverSearching" -Name "DontPromptForWindowsUpdate" -Type DWord -Value 1
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ DriverSearching" -Nombre "DontSearchWindowsUpdate" -Tipo DWord -Value 1
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -Type DWord -Value 0
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ WindowsUpdate")) {
		Nuevo elemento: ruta "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ WindowsUpdate" | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -Type DWord -Value 1
    Write-Host "Deshabilitando el reinicio automático de Windows Update ..."
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ WindowsUpdate \ AU")) {
		Nuevo elemento -Ruta "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ WindowsUpdate \ AU" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ WindowsUpdate \ AU" -Name "NoAutoRebootWithLoggedOnUsers" -Type DWord -Value 1
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ WindowsUpdate \ AU" -Name "AUPowerManagement" -Type DWord -Value 0
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ actioncenter.Add_Click ({ 
    Write-Host "Deshabilitando el Centro de actividades ..."
	Si (! (Ruta de prueba "HKCU: \ SOFTWARE \ Policies \ Microsoft \ Windows \ Explorer")) {
		New-Item -Path "HKCU: \ SOFTWARE \ Policies \ Microsoft \ Windows \ Explorer" | Out-Null
	}
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Policies \ Microsoft \ Windows \ Explorer" -Name "DisableNotificationCenter" -Type DWord -Value 1
	Set-ItemProperty -Path "HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ PushNotifications" -Name "ToastEnabled" -Type DWord -Value 0
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ visualfx.Add_Click ({ 
    Write-Host "Ajuste de efectos visuales para el rendimiento ..."
	Set-ItemProperty -Path "HKCU: \ Control Panel \ Desktop" -Name "DragFullWindows" -Type String -Value 0
	Set-ItemProperty -Path "HKCU: \ Control Panel \ Desktop" -Name "MenuShowDelay" -Type String -Value 200
	Set-ItemProperty -Path "HKCU: \ Control Panel \ Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte []] (144,18,3,128,16,0,0,0))
	Set-ItemProperty -Path "HKCU: \ Control Panel \ Desktop \ WindowMetrics" -Name "MinAnimate" -Type String -Value 0
	Set-ItemProperty -Path "HKCU: \ Control Panel \ Keyboard" -Name "KeyboardDelay" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ Software \ Microsoft \ Windows \ CurrentVersion \ Explorer \ Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ Software \ Microsoft \ Windows \ CurrentVersion \ Explorer \ Advanced" -Name "ListviewShadow" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ Software \ Microsoft \ Windows \ CurrentVersion \ Explorer \ Advanced" -Name "TaskbarAnimations" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU: \ Software \ Microsoft \ Windows \ CurrentVersion \ Explorer \ VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
	Set-ItemProperty -Path "HKCU: \ Software \ Microsoft \ Windows \ DWM" -Name "EnableAeroPeek" -Type DWord -Value 0
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ onedrive.Add_Click ({ 
    Write-Host "Deshabilitando OneDrive ..."
	Si (! (Ruta de prueba "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ OneDrive")) {
		Nuevo elemento: ruta "HKLM: \ SOFTWARE \ Políticas \ Microsoft \ Windows \ OneDrive" | Out-Null
	}
	Set-ItemProperty -Path "HKLM: \ SOFTWARE \ Policies \ Microsoft \ Windows \ OneDrive" -Name "DisableFileSyncNGSC" -Type DWord -Value 1
    Write-Host "Desinstalando OneDrive ..."
	Stop-Process -Name "OneDrive" -ErrorAction SilentlyContinue
	Inicio-Sueño -s 2
	$ onedrive = "$ env: SYSTEMROOT \ SysWOW64 \ OneDriveSetup.exe"
	Si (! (Test-Path $ onedrive)) {
		$ onedrive = "$ env: SYSTEMROOT \ System32 \ OneDriveSetup.exe"
	}
	Inicio-Proceso $ onedrive "/ desinstalar" -NoNewWindow -Espere
	Inicio-Sueño -s 2
	Stop-Process -Name "explorer" -ErrorAction SilentlyContinue
	Inicio-Sueño -s 2
	Remove-Item -Path "$ env: USERPROFILE \ OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
	Eliminar-elemento -Path "$ env: LOCALAPPDATA \ Microsoft \ OneDrive" -Force -Recurse -ErrorAction SilentlyContinue
	Eliminar elemento-Ruta "$ env: PROGRAMDATA \ Microsoft OneDrive" -Forzar -Recurrir -ErrorAction SilentlyContinue
	Eliminar-elemento -Path "$ env: SYSTEMDRIVE \ OneDriveTemp" -Force -Recurse -ErrorAction SilentlyContinue
	Si (! (Test-Path "HKCR:")) {
		New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT | Out-Null
	}
	Eliminar-elemento -Path "HKCR: \ CLSID \ {018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -ErrorAction SilentlyContinue
	Eliminar-elemento -Ruta "HKCR: \ Wow6432Node \ CLSID \ {018D5C66-4533-4307-9B53-224DE2ED1FE6}" -Recurse -ErrorAction SilentlyContinue
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ darkmode.Add_Click ({ 
    Write-Host "Habilitación del modo oscuro"
	Set-ItemProperty -Path HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Themes \ Personalize -Name AppsUseLightTheme -Value 0
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

$ lightmode.Add_Click ({ 
    Write-Host "Volver al modo ligero"
	Remove-ItemProperty -Path HKCU: \ SOFTWARE \ Microsoft \ Windows \ CurrentVersion \ Themes \ Personalize -Name AppsUseLightTheme
	$ wshell.Popup ("Operación completada", 0, "Hecho", 0x0)
})

[void] $ Form.ShowDialog ()

Run

  git config --global user.email "miguelangulo@live.com"
  git config --global user.name "Miguel Angulo Musayon"

to set your account's default identity.
Omit --global to set the identity only in this repository.