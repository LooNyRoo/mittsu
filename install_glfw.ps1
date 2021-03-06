Invoke-WebRequest https://github.com/glfw/glfw/releases/download/3.2.1/glfw-3.2.1.bin.WIN32.zip -OutFile "$pwd\glfw-3.2.1.bin.WIN32.zip"

Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Unzip "$pwd\glfw-3.2.1.bin.WIN32.zip" "$pwd"
