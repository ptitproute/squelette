#!/bin/bash

git add .
git commit -p
git -c "core.sshCommand=ssh -i cle.prive.github" push -u origin master