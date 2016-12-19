#importing data from result.dat file
resultsData <- read.table("results.dat", header=TRUE);

#utilisation (UI) 
UI <- 100 - resultsData$IDLE;


#Throughput (XO) 
XO <- (resultsData$CO/10)

#Response Time - Total users divided by throughput
R <- (resultsData$N / XO)

#Service demand (DI)
DI <- (UI / XO)




#Graph - Ui vs N

png("Utilisation_Graph.png");

par(col.main="blue")

#Values for type, lwd, lty, pch has been got from http://www.r-graph-gallery.com/6-graph-parameters-reminder/
plot(UI, type="l", lwd=2, lty=6, pch=19, xlab="Number of Users - (N)", ylab="Utilisation % - (UI)", main="Utilisation Graph - Ui vs N");
dev.off();



# Graph - Di vs N

png("ServiceDemand_Graph.png");

par(col.main="blue");

#Values for type, lwd, lty, pch has been got from http://www.r-graph-gallery.com/6-graph-parameters-reminder/
plot(DI, type="l", lwd=2, lty=6, pch=19, xlab="Number of Users - (N)", ylab="Service Demand - (DI)", main="Service Demand Graph - Di vs N");
dev.off();

# Graph - Xo vs N

png("Throughput_Graph.png");

par(col.main="blue");

#Values for type, lwd, lty, pch has been got from http://www.r-graph-gallery.com/6-graph-parameters-reminder/
plot(XO, type="l", lwd=2, lty=6, pch=19, xlab="Number of Users - (N)", ylab="Throughput - (XO)", main="Throughput Graph - Xo vs N");
dev.off();


# Graph - R vs N

png("ResponseTime_Graph.png");

par(col.main="blue")

#Values for type, lwd, lty, pch has been got from http://www.r-graph-gallery.com/6-graph-parameters-reminder/
plot(R, type="l", lwd=2, lty=6, pch=19, xlab="Number of Users - (N)", ylab="Response Time - (R)", main="Response Time Graph - R vs N");
dev.off();
