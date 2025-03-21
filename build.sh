#!/bin/bash

pandoc -s ./_layouts/index.html --template ./_layouts/template.html -o ./index.html
pandoc -s ./_layouts/markdown-tester.md --template ./_layouts/template.html -o ./markdown-tester.html
pandoc -s ./_layouts/blogs.md --template ./_layouts/template.html -o ./blogs.html

pandoc -s ./_blogs/2025-3-21-first-post.md --template ./_layouts/blog-template.html -o ./2025-3-21-first-post.html
