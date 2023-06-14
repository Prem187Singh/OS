#!/bin/bash

ls -lS | awk '{if(NR>1) print $5 "\t" $9}'
