# How to cross compile directc

```shell
$ sudo apt install gcc-riscv64-linux-gnu autoconf-archive

$ git clone https://git.beagleboard.org/beaglev-fire/directc.git
$ git clone https://git.kernel.org/pub/scm/libs/libgpiod/libgpiod.git -b v1.6.4

# libgpiod
$ pushd $(pwd) && cd libgpiod
$ autoupdate
$ ./autogen.sh --enable-tools=yes
$ ./configure --prefix=$(pwd)/../_install --host=riscv64-linux-gnu
$ make -j$(nproc) install
$ popd

# directc
$ pushd $(pwd) && cd directc
$ CC=riscv64-linux-gnu-gcc make -j$(nproc)
$ popd
```
