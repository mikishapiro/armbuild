#!/bin/bash
pip3 install molecule
cd roles/fedora2sd 
molecule --verbose converge
