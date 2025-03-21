#!/bin/bash

pandoc -s ./layouts/index.html --template ./layouts/template.html -o ./index.html
pandoc -s ./layouts/markdown-tester.md --template ./layouts/template.html -o ./markdown-tester.html
