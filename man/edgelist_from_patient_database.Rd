% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NetworkBuilding.R
\name{edgelist_from_patient_database}
\alias{edgelist_from_patient_database}
\title{Create an edge list from a patient database}
\usage{
edgelist_from_patient_database(base, patientID = "pID",
  hospitalID = "hID", admDate = "Adate", disDate = "Ddate",
  noloops = TRUE, window_threshold = 365, nmoves_threshold = NULL,
  verbose = FALSE)
}
\arguments{
\item{base}{(data.table).
A patient discharge database, in the form of a data.table. The data.table should have at least the following columns:

   * patientID (character)
   * hospitalID (character)
   * admDate (date)
   * disDate (date)}

\item{patientID}{(character)}

\item{hospitalID}{(character)}

\item{admDate}{(character)}

\item{disDate}{(character)
Change the default names of the base columns.}

\item{noloops}{(boolean).
Should transfers within the same nodes (loops) be kept or set to 0. Defaults to TRUE, removing loops (setting matrix diagonal to 0).}

\item{window_threshold}{(numeric)
A threshold for the number of days between discharge and admission to be counted as a transfer. Set to 0 for same day transfer, default is 365 days.}

\item{nmoves_threshold}{(numeric)
A threshold for the minimum number of patient transfer between two hospitals. Set to NULL to deactivate, default to NULL.}

\item{verbose}{TRUE to print computation steps}
}
\value{
The edge list in the form of a data.table.
}
\description{
This function creates the list of edges of the network from a patient discharge database.
}
