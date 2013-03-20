#!/bin/bash
if [ -n "{$PBS_NODEFILE}" ]; then
  if [ `wc -l <"${PBS_NODEFILE}"` -eq 1 ]; then
    cd $TMPDIR
  fi
fi