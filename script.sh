#!/bin/bash
cd /home/faris/myexpos/spl
echo OSSTARTUP
./spl spl_progs/osstartup.spl
echo TIMER
./spl spl_progs/contextswitchtimer.spl
echo INT10
./spl spl_progs/int10.spl
echo MOD7
./spl spl_progs/mod7.spl
echo MOD5
./spl spl_progs/mod5.spl
echo MOD0
./spl spl_progs/mod0.spl
echo MOD4
./spl spl_progs/mod4.spl
cd /home/faris/myexpos/xfs-interface
./xfs-interface load --os ../spl/spl_progs/osstartup.xsm
./xfs-interface load --int=10 ../spl/spl_progs/int10.xsm
./xfs-interface load --int=timer ../spl/spl_progs/contextswitchtimer.xsm
./xfs-interface load --module 7 ../spl/spl_progs/mod7.xsm
./xfs-interface load --module 5 ../spl/spl_progs/mod5.xsm
./xfs-interface load --module 4 ../spl/spl_progs/mod4.xsm
./xfs-interface load --module 0 ../spl/spl_progs/mod0.xsm