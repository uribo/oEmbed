
<!-- README.md is generated from README.Rmd. Please edit that file -->

# oEmbed

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/oEmbed)](https://CRAN.R-project.org/package=oEmbed)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of oEmbed is to make a request for web resources that follows
the ‘[oEmbed](https://oembed.com)’ specification and display the content
in R.

## Installation

You can install the released version of oEmbed from GitHub using remotes
package:

``` r
if (!requireNamespace("remotes"))
  install.packages("remotes")

remotes::install_github("uribo/oEmbed")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(oEmbed)
## basic example code
```

``` r
x <- 
  oembed(service = "twitter", 
         url = "https://twitter.com/u_ribo/status/1318770949722759168")
x
```

    #> $url
    #> [1] "https://twitter.com/u_ribo/status/1318770949722759168"
    #> 
    #> $author_name
    #> [1] "Uryu Shinya"
    #> 
    #> $author_url
    #> [1] "https://twitter.com/u_ribo"
    #> 
    #> $html
    #> [1] "<blockquote class=\"twitter-tweet\"><p lang=\"ja\" dir=\"ltr\">Rでのモデル開発を統一的に行う、tidymodelsの情報を整理しました\U0001f4aa <br>{tune}や{workflows}によるパラメータ探索、ワークフローの運用の話まで、広く紹介します。<br>{recipes}で新しいstep_()や関連パッケージも増えて更に便利になりました。<br>\U0001f989コード <a href=\"https://t.co/sT9jhrwaK8\">https://t.co/sT9jhrwaK8</a> <a href=\"https://t.co/Ag1CNutEBI\">https://t.co/Ag1CNutEBI</a> <a href=\"https://t.co/dMejxP6mwd\">pic.twitter.com/dMejxP6mwd</a></p>&mdash; Uryu Shinya (@u_ribo) <a href=\"https://twitter.com/u_ribo/status/1318770949722759168?ref_src=twsrc%5Etfw\">October 21, 2020</a></blockquote>\n<script async src=\"https://platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>\n"
    #> 
    #> $width
    #> [1] 550
    #> 
    #> $height
    #> NULL
    #> 
    #> $type
    #> [1] "rich"
    #> 
    #> $cache_age
    #> [1] "3153600000"
    #> 
    #> $provider_name
    #> [1] "Twitter"
    #> 
    #> $provider_url
    #> [1] "https://twitter.com"
    #> 
    #> $version
    #> [1] "1.0"

``` r
embed_contents(x)
```

<blockquote class="twitter-tweet"><p lang="ja" dir="ltr">Rでのモデル開発を統一的に行う、tidymodelsの情報を整理しました💪 <br>{tune}や{workflows}によるパラメータ探索、ワークフローの運用の話まで、広く紹介します。<br>{recipes}で新しいstep_()や関連パッケージも増えて更に便利になりました。<br>🦉コード <a href="https://t.co/sT9jhrwaK8">https://t.co/sT9jhrwaK8</a> <a href="https://t.co/Ag1CNutEBI">https://t.co/Ag1CNutEBI</a> <a href="https://t.co/dMejxP6mwd">pic.twitter.com/dMejxP6mwd</a></p>&mdash; Uryu Shinya (@u_ribo) <a href="https://twitter.com/u_ribo/status/1318770949722759168?ref_src=twsrc%5Etfw">October 21, 2020</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

### Video

Browsing YouTube Videos in RStudio Viewer

``` r
x <-
  oembed("youtube", 
       url = "https://www.youtube.com/watch?v=wQPgM-9LatM", 
       format = "json",
       maxwidth = 600)

htmltools::browsable(embed_contents(x))
```

## Similar Projects

-   [vembedr](https://github.com/ijlyttle/vembedr)
-   [tubeplayR](https://github.com/kazutan/tubeplayR)
