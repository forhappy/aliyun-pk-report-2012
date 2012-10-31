all:aliyun-report-2012.pdf
aliyun-report-2012.pdf:aliyun-report-2012.tex
	pdflatex $^
	pdflatex $(shell pwd)/*.tex  $(shell pwd)/*.toc $(shell pwd)/*.aux 
	# if you are the first time to compile aliyun-report-2012.pdf,
	# you have to uncomment the following line, yes, it has to be compiled
	# three times to work properly.
	pdflatex $(shell pwd)/*.tex  $(shell pwd)/*.toc $(shell pwd)/*.aux 
	evince $@

.PHONY:clean view
clean:
	rm *.log *.aux *.out *.toc *.nav *.snm *.vrb aliyun-report-2012.pdf 

view:
	evince aliyun-report-2012.pdf
