#' Embed web contents from services
#' @param x request contents
#' @examples
#' \dontrun{
#' embed_contents(oembed("speakerdeck",
#'                       url = "https://speakerdeck.com/s_uryu/nekosky"))
#' }
#' @return html character.
#' @export
embed_contents <- function(x) {
  if (is.list(x) == FALSE) {
    rlang::abort("list")
  } else {
    if (x[["type"]] %in% c("rich", "video")) {
      res <-
        htmltools::HTML(x[["html"]])
      res
    }
  }
}
