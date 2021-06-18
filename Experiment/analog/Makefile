FILES=report-cover.pdf\
			out/main.pdf
R=1
NUM=01
NAME=ana

connect: $(FILES)
	pdftk $(FILES) cat output "sasaki_ryosuke_$(NUM)_$(NAME).pdf"

re: $(FILES)
	pdftk $(FILES) cat output "B-$(NUM)佐々木良輔R$(R).pdf"

clean:
	rm B-$(NUM)佐々木良輔*
