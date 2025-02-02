% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NetworkBuilding.R
\name{hospinet_from_patient_database}
\alias{hospinet_from_patient_database}
\title{Create HospiNet object from patient database}
\usage{
hospinet_from_patient_database(base, patientID = "pID",
  hospitalID = "hID", admDate = "Adate", disDate = "Ddate",
  noloops = TRUE, window_threshold = 365, nmoves_threshold = NULL,
  verbose = FALSE)
}
\arguments{
\item{base}{(data.table).
A patient discharge database, in the form of a data.table. The data.table should have at least the following columns:
\itemize{
   \item patientID (character)
   \item hospitalID (character)
   \item admDate (date)
   \item disDate (date)
   }}

\item{patientID, hospitalID, admDate, disDate}{(character)
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
The function returns a HospiNet object.
}
\description{
This function creates a HospiNet object from the database containing patients stays.
}
\examples{
mydb = create_fake_patientDB(n_patients = 100, n_hospital = 5)
mat = hospinet_from_patient_database(base = mydb)
mat

}
\seealso{
\code{\link{HospiNet}}
}
