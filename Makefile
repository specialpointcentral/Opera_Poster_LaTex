file=poster_landscape
ALL: clean ${file}.pdf 
%.pdf: %.tex Makefile
	xelatex --enable-write18 $< &&	xelatex $< && xelatex $<

show: 
	  xdg-open ${file}.pdf
clean:
	  rm -f *.aux	*.bbl	*.blg	*.log	poster_*.pdf 
