class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')
       "/assets"(view:"/assets")
        "/htmlbuilder"(view:"/htmlbuilder") 
        "/portlet"(view:"/portlet")
        "/form-component"(view:"/form-component")
    }
}
