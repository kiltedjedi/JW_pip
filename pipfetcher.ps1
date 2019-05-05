

param(
    [Parameter(Mandatory = $True)][ValidateSet("install","download")][String] $ActionType,
    [Parameter(Mandatory = $True)][ValidateScript({Test-Path $_ -PathType 'Container'})][string] $PackageDirectory,
    [Parameter(Mandatory = $True)][ValidateScript({Test-Path $_ -PathType 'Leaf'})][string] $Requirements,
    [Parameter(Mandatory = $True)][String] $ZipFile
    )

function Get-PyPackages ($packageDirectory, $requirements, $ZipFile)
{
    $Arguments = "download -r "+ $requirements + " -d " + $packageDirectory
    start-process -wait pip -Argumentlist $Arguments
    #copy-item -path $requirements -Destination $packageDirectory
    Compress-Archive -path "$packageDirectory\*.*" -DestinationPath $ZipFile -Force
    # Remove-item -Path "$packageDirectory\*.*" -recurse -force -exclude $ZipFile
}

function Install-Packages($packageDirectory, $requirements, $ZipFile)
{
    if (-not ($zipfile | Test-Path -PathType 'Leaf'))
    {
        Throw "The archive file is not found, program will now exit"
        exit
    }
    Expand-Archive -Path $ZipFile -DestinationPath $packageDirectory -Force
    $Arguments = "install --no-index --find-links "+ $packageDirectory + " -r " + $requirements 
    start-process -wait pip -Argumentlist $Arguments    
}

if ($actionType -eq "download")
{
    Get-PyPackages($PackageDirectory, $Requirements, $ZipFile)
}
if ($actionType -eq "install")
{
    Install-Packages($PackageDirectory, $Requirements, $ZipFile)
}