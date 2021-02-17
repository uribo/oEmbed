call_oembed_api <- memoise::memoise(
  function(oembed_url, url, ...) {
    res <-
      httr::GET(oembed_url,
                query = list(url = url, ...))
    if (httr::status_code(res) ==  200L) {
      httr::content(res)
    } else {
      rlang::abort(
        glue::glue("Request failed: status code {httr::status_code(res)}"))
    }
  }
)
