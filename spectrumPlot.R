#!/usr/bin/env Rscript
#Commemt Comment!
#https://dsp.stackexchange.com/questions/47271/how-to-use-function-spectrum-in-r-to-perform-spectral-analysis
spectrumPlot <- function() {
	ts <- 0.05
	fs <- 1/ts
	t <- seq(0,512,by=ts)
	x <- cos(2*pi*t) + 0.75*sin(2*pi*4*t) + 2*sin(2*pi*6*t)
	x.spec <- spectrum(x,log="no",span=5,plot=FALSE)
	spx <- x.spec$freq * fs
	spy <- 2*x.spec$spec
	plot(spy~spx,xlab="frequency",ylab="spectral density", type="1")
}

