mkdir -p presentazione_files/libs/revealjs/dist/theme/images/ && cp images/loghi.jpg  presentazione_files/libs/revealjs/dist/theme/images/loghi.jpg
#quarto preview presentazione.qmd --no-browser --no-watch-inputs --port 6329 --host 0.0.0.0
quarto render presentazione.qmd
