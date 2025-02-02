% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FakePatientsDB.R
\name{create_patient_stay}
\alias{create_patient_stay}
\title{Create a fake patient stay}
\usage{
create_patient_stay(pID, hID, last_discharge_date = NULL,
  days_since_discharge = NULL, length_of_stay = NULL)
}
\arguments{
\item{pID}{the patient ID}

\item{hID}{the hospital ID}

\item{last_discharge_date}{the last discharge date}

\item{days_since_discharge}{the number of days since last discharge (default: max(0, rnorm(1, mean = 30, sd = 10)))}

\item{length_of_stay}{the length of stay (default: max(1, rnorm(1, mean = 5, sd = 3))}
}
\value{
a one row data.table corresponding to the patient stay.
}
\description{
create_patient_stay is an internal function used by create_fake_patientDB.
}
