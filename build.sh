#!/usr/bin/env bash

docker build -t ruslan-dudnikov-resume .
docker run --rm -i -v "$PWD":/data ruslan-dudnikov-resume pdflatex ruslan_dudnikov_resume.tex
