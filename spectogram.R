# spectogram function, by Jesse Bilton
# inspired by https://dsp.stackexchange.com/questions/47271/how-to-use-function-spectrum-in-r-to-perform-spectral-analysis

spectogram <- function(u){
	fs <- u$rate
	ts <- 1/fs
	x <- u[3584:4096]	
	x.spec <- spectrum(x, log="no", spans=5, plot=FALSE)
	spx <- x.spec$freq * fs
	spy <- 2*x.spec$spec
	plot(spy~spx, xlab="frequency", ylab="spectral density")
}
