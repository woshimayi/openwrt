sudo apt-get install ./multiarch-support_2.19-0ubuntu6.15_amd64.deb
sudo apt-get install ./libssl0.9.8_0.9.8o-7ubuntu3.2.14.04.1_i386.deb

# error "Please port gnulib freadahead.c to your platform! Look at the definition of fflush, fread, ungetc on your system, then report this to bug-gnulib."
cd ../build_dir/host/m4-1.4.17/
sed -i 's/IO_ftrylockfile/IO_EOF_SEEN/' lib/*.c
echo "#define _IO_IN_BACKUP 0x100" >> lib/stdio-impl.h
cd -

