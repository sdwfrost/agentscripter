#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
template <- function(model, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    model = JS(model)
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'template',
    x,
    width = width,
    height = height,
    package = 'agentscripter'
  )
}

#' Widget output function for use in Shiny
#'
#' @export
templateOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'template', width, height, package = 'agentscripter')
}

#' Widget render function for use in Shiny
#'
#' @export
renderTemplate <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, templateOutput, env, quoted = TRUE)
}
