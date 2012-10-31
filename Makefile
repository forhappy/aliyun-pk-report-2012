all:aliyun-report-2012.pdf
aliyun-report-2012.pdf:aliyun-report-2012.tex
	pdflatex $^
	pdflatex $(shell pwd)/*.tex  $(shell pwd)/*.toc $(shell pwd)/*.aux 
#	pdflatex $(shell pwd)/*.tex  $(shell pwd)/*.toc $(shell pwd)/*.aux 
	evince $@

.PHONY:clean view
clean:
	rm *.log *.aux *.out *.toc *.nav *.snm aliyun-report-2012.pdf 

view:
	evince aliyun-report-2012.pdf
