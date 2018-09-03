#!/bin/bash
cd /home/faris/myexpos/spl
./spl spl_progs/osstartup.spl
./spl spl_progs/contextswitchtimer.spl
./spl spl_progs/int10.spl
./spl spl_progs/mod7.spl
./spl spl_progs/mod5.spl
cd /home/faris/myexpos/xfs-interface
./xfs-interface load --os ../spl/spl_progs/osstartup.xsm
./xfs-interface load --int=10 ../spl/spl_progs/int10.xsm
./xfs-interface load --int=timer ../spl/spl_progs/contextswitchtimer.xsm
./xfs-interface load --module 7 ../spl/spl_progs/mod7.xsm
./xfs-interface load --module 5 ../spl/spl_progs/mod5.xsm
