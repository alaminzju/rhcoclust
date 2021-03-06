\name{rhcoclust_network}
\alias{rhcoclust_network}

\title{
Visualization of clustering network plot
}
\description{
This function is used for visualization of clustering network plot, the plot objects are generated by rhcoclust.
}
\usage{
rhcoclust_network(CoClustObj, scale.threshold = 10)
}

\arguments{
  \item{CoClustObj}{
Output objects from rhcoclust
}
  \item{scale.threshold}{
Edge width scaling threshold, defaults is 10
}
}

\value{
Plot
}

\author{
Md. Bahadur Badsha <badshabio15@gmail.com>
}


\seealso{
\link{rhcoclust} for generating a graph objects for clustering network
}
\examples{
# Load necessary library
library(rhcoclust)
library(fields)
library(igraph)

# Load real data
data("toxygates_data")

# Load predefined simulated data
data("simu_data")

# Data analysis using real data by rhcoclust. Note, for analysis of predefined
# simulated data use GCmat <- simu_data
GCmat <- toxygates_data

# Apply rhcoclust to identify significant co-cluster of samples and their regulatory features
CoClustObj <- rhcoclust(GCmat, rk=3, ck=3, method.dist= "manhattan", method.hclust = "ward.D")

# Visualization of clustering network plot
rhcoclust_network(CoClustObj, scale.threshold=10)
}

