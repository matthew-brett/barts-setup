barts_setup.pdf: barts_setup.md
	pandoc $< -o $@

clean:
	rm *.pdf
