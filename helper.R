library(htmltools)

two_column <- function(text, 
                       img, 
                       link = NULL,
                       linktext = NULL, 
                       iside="left") {
  div(class="row",
    div(class="col-sm-6",
      if(iside=="left"){
        img(src=img,width="100%")
      }else{
        tagList(h3(text),
              if(!is.null(link)) a(href=link,linktext))
      }
    ),
    div(class="col-sm-6",
        if(iside=="left"){
          tagList(h3(text),
            if(!is.null(link)) a(href=link,linktext))
        }else{
          img(src=img,width="100%")
        }
    )
  )
}


two_column_fixed_height <- function(text, 
                                    img, 
                                    link = NULL,
                                    linktext = NULL, 
                                    iside="left") {
  div(class="row",
      div(class="col-sm-6",
          if(iside=="left"){
            img(src=img,height="200px")
          }else{
            tagList(h3(text),
                    if(!is.null(link)) a(href=link,linktext))
          }
      ),
      div(class="col-sm-6",
          if(iside=="left"){
            tagList(h3(text),
                    if(!is.null(link)) a(href=link,linktext))
          }else{
            img(src=img,height="200px")
          }
      )
  )
}
