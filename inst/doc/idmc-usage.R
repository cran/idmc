## ----include = FALSE----------------------------------------------------------
api_envvar_available <- !is.na(Sys.getenv("IDMC_API", unset = NA))
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = api_envvar_available
)

## ----eval = !api_envvar_available, echo = FALSE, comment = NA-----------------
#  message("`IDMC_API` env variable not set, so code chunks will not be evaluated.")

## ----setup--------------------------------------------------------------------
library(idmc)

## ----api----------------------------------------------------------------------
df <- idmc_get_data()
df

## ----transform----------------------------------------------------------------
idmc_transform_daily(df)

