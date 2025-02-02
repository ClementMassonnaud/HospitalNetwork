% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NetworkAnalysis.R
\name{get_clusters}
\alias{get_clusters}
\title{Compute the clusters}
\usage{
get_clusters(graph, algo, undirected, ...)
}
\arguments{
\item{graph}{an igraph object}

\item{algo}{the type of algorithm}

\item{undirected}{either "mutual" or "arbitrary"}

\item{...}{other arguments to be passed on to the algorithm}
}
\value{
a data.table
}
\description{
Compute the clusters
}
