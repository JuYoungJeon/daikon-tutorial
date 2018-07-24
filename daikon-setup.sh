
if [ ! -f daikon-5.6.6.tar.gz ];
then
	wget http://plse.cs.washington.edu/daikon/download/daikon-5.6.6.tar.gz
	tar zxf daikon-5.6.6.tar.gz
fi

currDir=$PWD

echo "export DAIKONDIR=$currDir/daikon-5.6.6" >> ~/.bashrc
echo "source \$DAIKONDIR/scripts/daikon.bashrc" >>~/.bashrc
make -C $DAIKONDIR rebuild-everything
