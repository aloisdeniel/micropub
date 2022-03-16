

outputdir='./micropub'
version=$1
base_download_uri=https://github.com/aloisdeniel/micropub/releases/download/$version;

echo "[micropub]"

if [ -z "$1" ]
  then
    echo "Missing version as first argument"
fi

echo "Installing of v$version starts..."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

# Create dir if not exists
mkdir -p $outputdir

# Delete previous version if exists
if [[ -e $outputdir/micropub.exe ]]; then
    echo " ~x~ Deleting micropub.exe"
    rm -r $outputdir/micropub.exe
fi
if [[ -e $outputdir/static.zip ]]; then
    echo " ~x~ Deleting static.zip"
    rm -r $outputdir/static.zip
fi
if [[ -e $outputdir/static ]]; then
    echo " ~x~ Deleting static"
    rm -r $outputdir/static
fi


echo " <~~ Downloading static.zip"
curl $base_download_uri/static.zip -o $outputdir/static.zip

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo " <^> Unzipping static.zip"
    unzip $outputdir/static.zip -d static
    echo " <~~ Downloading micropub.exe for macOS"
    curl $base_download_uri/micropub-macos.exe -o $outputdir/micropub.exe
elif [[ "$OSTYPE" == "cygwin" ]]; then
    echo " <^> Unzipping static.zip"
    unzip $outputdir/static.zip -d static
    echo " <~~ Downloading micropub.exe for Windows"
    curl $base_download_uri/micropub-windows.exe -o $outputdir/micropub.exe
else
    echo " <^> Unzipping static.zip"
    apt install unzip
    unzip $outputdir/static.zip -d static
    echo " <~~ Downloading micropub.exe for Ubuntu"
    curl $base_download_uri/micropub-ubuntu.exe -o $outputdir/micropub.exe
fi

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "[✓] Installed!"