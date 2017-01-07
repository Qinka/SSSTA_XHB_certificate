#!/bin/sh

cp certificate_template.tex $2
cat $1 | awk -E makeup.awk | awk  '{print $0" '$2'"}'| sh
