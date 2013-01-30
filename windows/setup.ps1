Function Test-RegistryValue 
{
    param(
        [Alias("RegistryPath")]
        [Parameter(Position = 0)]
        [String]$Path
        ,
        [Alias("KeyName")]
        [Parameter(Position = 1)]
        [String]$Name
    )

    process 
    {
        if (Test-Path $Path) 
        {
            $Key = Get-Item -LiteralPath $Path
            if ($Key.GetValue($Name, $null) -ne $null)
            {
                if ($PassThru)
                {
                    Get-ItemProperty $Path $Name
                }       
                else
                {
                    $true
                }
            }
            else
            {
                $false
            }
        }
        else
        {
            $false
        }
    }
}



$EnableUACRegistryPath = "REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System"
$EnableUACRegistryKeyName = "EnableLUA"
$UACKeyExists = Test-RegistryValue -RegistryPath $EnableUACRegistryPath -KeyName $EnableUACRegistryKeyName 
if ($UACKeyExists)
{
    Set-ItemProperty -Path $EnableUACRegistryPath -Name $EnableUACRegistryKeyName -Value 0
}
else
{
    New-ItemProperty -Path $EnableUACRegistryPath -Name $EnableUACRegistryKeyName -Value 0 -PropertyType "DWord"
}

function Install-NeededFor {
param(
   [string] $packageName = ''
  ,[bool] $defaultAnswer = $true
)
  if ($packageName -eq '') {return $false}
  
  $yes = '6'
  $no = '7'
  $msgBoxTimeout='-1'
  $defaultAnswerDisplay = 'Yes'
  $buttonType = 0x4;
  if (!$defaultAnswer) { $defaultAnswerDisplay = 'No'; $buttonType= 0x104;}
  
  $answer = $msgBoxTimeout
  try {
    $timeout = 10
    $question = "Do you need to install $($packageName)? Defaults to `'$defaultAnswerDisplay`' after $timeout seconds"
    $msgBox = New-Object -ComObject WScript.Shell
    $answer = $msgBox.Popup($question, $timeout, "Install $packageName", $buttonType)
  }
  catch {
  }
  
  if ($answer -eq $yes -or ($answer -eq $msgBoxTimeout -and $defaultAnswer -eq $true)) {
    write-host "Installing $packageName"
    return $true
  }
  
  write-host "Not installing $packageName"
  return $false
}


#install chocolatey
if (Install-NeededFor 'chocolatey') {
  iex ((new-object net.webclient).DownloadString('http://chocolatey.org/install.ps1'))
}


#install sql server
\\192.168.1.9\Tekpub\sql_server_2012_DE_sp1_x64\Setup.exe /q /ACTION=Install /FEATURES=SQLENGINE,REPLICATION,FULLTEXT,DQ,DQC,BIDS,CONN,IS,SSMS,ADV_SSMS /INSTANCENAME=MSSQLSERVER /SQLSVCACCOUNT="NT AUTHORITY\Network Service" /SQLSYSADMINACCOUNTS=".\rsullivan" /AGTSVCACCOUNT="NT AUTHORITY\Network Service" /IACCEPTSQLSERVERLICENSETERMS


# install nuget, ruby.devkit, and ruby if they are missing
cinstm nuget.commandline
cinst "c:\starting\packages.config"

.\NiniteInstaller.exe