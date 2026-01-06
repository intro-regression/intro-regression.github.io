# _common.R based on Introduction to Modern Statistics: https://github.com/OpenIntroStat/ims/blob/main/_common.R
options(digits = 3)


if (knitr::is_html_output()) {
  knitr::opts_chunk$set(out.width = "100%")
} else if (knitr::is_latex_output()) {
  knitr::opts_chunk$set(out.width = "85%")
}

# knit options -----------------------------------------------------------------

options(knitr.kable.NA = "")

# kableExtra options -----------------------------------------------------------

#options(kableExtra.html.bsTable = TRUE)

# dplyr options ----------------------------------------------------------------

options(dplyr.print_min = 6, dplyr.print_max = 6)

# ggplot2 theme and colors -----------------------------------------------------

if (knitr::is_html_output()) {
  ggplot2::theme_set(ggplot2::theme_minimal(base_size = 13))
} else if (knitr::is_latex_output()) {
  ggplot2::theme_set(ggplot2::theme_minimal(base_size = 12))
}

# ggplot2::update_geom_defaults("point", list(color = openintro::IMSCOL["blue","full"],
#                                             fill = openintro::IMSCOL["blue","full"]))
# ggplot2::update_geom_defaults("bar", list(fill = openintro::IMSCOL["blue","full"], 
#                                           color = "#FFFFFF"))
# ggplot2::update_geom_defaults("col", list(fill = openintro::IMSCOL["blue","full"], 
#                                           color = "#FFFFFF"))
# ggplot2::update_geom_defaults("boxplot", list(color = openintro::IMSCOL["blue","full"]))
# ggplot2::update_geom_defaults("density", list(color = openintro::IMSCOL["blue","full"]))
# ggplot2::update_geom_defaults("line", list(color = openintro::IMSCOL["gray", "full"]))
# ggplot2::update_geom_defaults("smooth", list(color = openintro::IMSCOL["gray", "full"]))
# ggplot2::update_geom_defaults("dotplot", list(color = openintro::IMSCOL["blue","full"], 
#                                              fill = openintro::IMSCOL["blue","full"]))

