

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
echo ""
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


echo ""
echo " <~~ Downloading static.zip"
curl -L $base_download_uri/static.zip -o $outputdir/static.zip

echo ""
echo " <^> Unzipping static.zip"
unzip $outputdir/static.zip -d $outputdir/static
echo ""

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo " <~~ Downloading micropub.exe for macOS"
    curl -L $base_download_uri/micropub-macos.exe -o $outputdir/micropub.exe
    chmod +x $outputdir/micropub.exe
elif [[ "$OSTYPE" == "cygwin" ]]; then
    echo " <~~ Downloading micropub.exe for Windows"
    curl -L $base_download_uri/micropub-windows.exe -o $outputdir/micropub.exe
else
    echo " <~~ Downloading micropub.exe for Ubuntu"
    curl -L $base_download_uri/micropub-ubuntu.exe -o $outputdir/micropub.exe
    chmod +x $outputdir/micropub.exe
fi

echo ""
echo " ~x~ Deleting static.zip"
rm -r $outputdir/static.zip

echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "[✓] Installed!"
