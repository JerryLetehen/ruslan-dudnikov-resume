#!/usr/bin/env bash
set -e

docker build -t ruslan-dudnikov-resume .

# Résumé (single page)
docker run --rm -i -v "$PWD":/data ruslan-dudnikov-resume pdflatex ruslan_dudnikov_resume.tex

# Projects (multi-page: compile twice so "Page X of Y" resolves)
docker run --rm -i -v "$PWD":/data ruslan-dudnikov-resume pdflatex ruslan_dudnikov_projects.tex
docker run --rm -i -v "$PWD":/data ruslan-dudnikov-resume pdflatex ruslan_dudnikov_projects.tex
