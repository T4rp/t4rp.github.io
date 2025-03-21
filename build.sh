#!/bin/bash

pandoc -s ./layouts/index.html --template ./layouts/template.html -o ./index.html
pandoc -s ./layouts/markdown-tester.md --template ./layouts/template.html -o ./markdown-tester.html
pandoc -s ./layouts/blogs.md --template ./layouts/template.html -o ./blogs.html

pandoc -s ./blogs/2025-3-21-first-post.md --template ./layouts/blog-template.html -o ./2025-3-21-first-post.html
