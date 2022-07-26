% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/attributes.R
\name{add_type_attrs}
\alias{add_type_attrs}
\title{automatically add "name" and "type" attributes to columns in a data frame}
\usage{
add_type_attrs(.x)
}
\arguments{
\item{.x}{a data.frame or tibble}
}
\value{
an object of the same type as .x, with updated frictionless attributes for factor columns
input data frame attributes are preserved
}
\description{
Given a data.frame (or tibble), this function returns the
data.frame after adding on Frictionless "name" and
"type" attributes based on the name and class of each column in R:
}
\details{
\tabular{cc}{
   \strong{R class} \tab \strong{TDR type} \cr
   character \tab string \cr
   Date \tab date \cr
   numeric \tab number \cr
   factor* \tab string \cr
   hms,difftime \tab time \cr
   integer \tab integer \cr
   logical \tab boolean \cr
   POSIXct,POSIXt \tab datetime \cr
   difftime \tab number \cr
}


*Levels of factor columns are also captured in the "enum" item of the "constraints" attribute list.
}
