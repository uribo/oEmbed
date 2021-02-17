#' Request web contents via oEmbed format
#' @param service provider name
#' @param url a url
#' @param ... path to httr::GET query arguments.
#' @examples
#' \dontrun{
#' oembed("speakerdeck", url = "https://speakerdeck.com/s_uryu/nekosky")
#' }
#' @export
oembed <- function(service, url, ...) {
  oembed_url <-
    switch (service,
            # "ifttt" = "http://www.ifttt.com/oembed",
            "flickr" = "https://www.flickr.com/services/oembed",
            "twitter" = "https://publish.twitter.com/oembed",
            "spotify" = "https://embed.spotify.com/oembed",
            "speakerdeck" = "https://speakerdeck.com/oembed.json",
            "hatenablog" = "http://hatenablog.com/oembed",
            "youtube" = "https://www.youtube.com/oembed"
    )
  res <-
    call_oembed_api(oembed_url, url, ...)
  res
}
