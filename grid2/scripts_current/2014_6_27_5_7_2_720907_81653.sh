#!/bin/bash
#PBS -q batch
#PBS -l nodes=1:ppn=1
#PBS -l walltime=96:00:00
#PBS -e /panfs/panfs.cluster/home/nils/projects/triforce-grids/fullgrid/grid2/logs_current/out_2014_6_27_5_7_2_720907_81653.txt
#PBS -o /panfs/panfs.cluster/home/nils/projects/triforce-grids/fullgrid/grid2/logs_current/out_2014_6_27_5_7_2_720907_81653.txt
#PBS -j oe
/home/nils/bin/execute /panfs/panfs.cluster/home/nils/projects/triforce-grids/fullgrid/grid2 Rscript /home/nils/src/triforce-dat/surfaceIntegral.R 3 2;/home/nils/src/triforce-dat/convertCSV2Binary.py /panfs/panfs.cluster/home/nils/projects/triforce-grids/fullgrid/grid2/dataConcave.csv /panfs/panfs.cluster/home/nils/projects/triforce-grids/fullgrid/grid2/dataConcave.dat;/home/nils/src/triforce-dat/convertCSV2Binary.py /panfs/panfs.cluster/home/nils/projects/triforce-grids/fullgrid/grid2/dataConcave0.csv /panfs/panfs.cluster/home/nils/projects/triforce-grids/fullgrid/grid2/dataConcave0.dat;/home/nils/src/triforce-dat/convertCSV2Binary.py /panfs/panfs.cluster/home/nils/projects/triforce-grids/fullgrid/grid2/dataConcave1.csv /panfs/panfs.cluster/home/nils/projects/triforce-grids/fullgrid/grid2/dataConcave1.dat;/home/nils/src/triforce-dat/convertCSV2Binary.py /panfs/panfs.cluster/home/nils/projects/triforce-grids/fullgrid/grid2/dataConcave2.csv /panfs/panfs.cluster/home/nils/projects/triforce-grids/fullgrid/grid2/dataConcave2.dat;cp /home/nils/src/triforce-dat/extra/* /panfs/panfs.cluster/home/nils/projects/triforce-grids/fullgrid/grid2/ 
