#!/bash/bin

# Note this is the current versio as of 2018.09.06 - check it is still current!
echo "Downloading go"
wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz

echo "Download complete, extracting"
tar -C /usr/local -xzf go1.11.linux-amd64.tar.gz

echo "Backing up bash file"
cp ~/.bashrc ~/.bashrc_backup

echo "Adding path to bashrc"
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc

echo "Removing download file"
rm go1.11.linux-amd64.tar.gz

echo "Done."