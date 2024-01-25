#!/bin/bash
# based on: https://openbeagle.org/beaglev-fire/Microchip-FPGA-Tools-Setup

export SC_INSTALL_DIR=/home/$USER/microchip/SoftConsole-v2022.2-RISC-V-747
export LIBERO_INSTALL_DIR=/home/$USER/microchip/Libero_SoC_v2023.2

# SoftConsole
export PATH=$PATH:$SC_INSTALL_DIR/riscv-unknown-elf-gcc/bin
export FPGENPROG=$LIBERO_INSTALL_DIR/Libero/bin64/fpgenprog

# Libero
export PATH=$PATH:$LIBERO_INSTALL_DIR/Libero/bin:$LIBERO_INSTALL_DIR/Libero/bin64
export PATH=$PATH:$LIBERO_INSTALL_DIR/SynplifyPro/bin
export PATH=$PATH:$LIBERO_INSTALL_DIR/ModelSimPro/modeltech/linuxacoem
export LOCALE=C
export LD_LIBRARY_PATH=/usr/lib/i386-linux-gnu:$LD_LIBRARY_PATH

# Libero License daemon
export LM_LICENSE_FILE=1702@localhost
export SNPSLMD_LICENSE_FILE=1702@localhost

lmgrd -c $LIBERO_INSTALL_DIR/Libero/bin64/License.dat
