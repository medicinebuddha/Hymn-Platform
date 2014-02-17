navigation={
    // Declare the "app" scope, used by default in tags
    system {
     
        // A nav item pointing to HomeController, using the default action
        home(titleText:"Index Page")
 
        // Items pointing to ContentController, using the specific action
        about(controller:'content',data:[icon:'icon-bell'],title:"about us")
        contact(controller:'content')
        help(controller:'content')
         
        // Some user interface actions in second-level nav
        // All in BooksController
        books() {
            // "list" action in "books" controller
            list()
            // "create" action in "books" controller
            create()
        }
         
        // More convoluted stuff split across controllers/locations
        support(controller:'content', action:'support') {
            faq(url:'javascript:;') // point to CMS
            makeRequest(controller:'supportRequest', action:'create')
        }

	demoEntity(controller:'demoEntity',action:'index')
    }
     
    // Some back-end admin scaffolding stuff in a separate scope
    admin {
        // Use "list" action as default item, even if its not default action
        // and create automatic sub-items for the other actions
        books(controller:'bookAdmin', action:'list, create, search')
         
       
    }
}
