/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.loonghymn.grails.tag
import groovy.xml.MarkupBuilder
/**
 *
 * @author loonghymn
 */
class HymnTagLib {
    
    static namespace = "uix"
    def templateRoot="/_uix/"
    
    def emoticon = { attrs, body ->
        def templateName="emoticon"
        def template=templateRoot+templateName
                       
        def model=[mainContent:body(),attrs:attrs,body:body]
        def content=render(template:template,model:model)
        out<<content      
    }
    
    def portlet  = {attrs,body->
        def templateName="portlet"
        def template=templateRoot+templateName
        
        def model=[attrs:attrs,body:body]
        def content=render(template:template,model:model)
        out<<content
    }
    
    
    def dateField={attrs,body->
                
        def templateName="dateField"
        def template=templateRoot+templateName
        
        def model=[attrs:attrs,body:body]
        def content=render(template:template,model:model)
        out<<content
    
    }
    
    def dateTimeField = {attrs,body->
        def templateName="dateTimeField"
        def template=templateRoot+templateName
        
        def model=[attrs:attrs,body:body]
        def content=render(template:template,model:model)
        out<<content
    }
    
    def timeField = {attrs,body->
        def templateName="timeField"
        def template=templateRoot+templateName
        
        def model=[attrs:attrs,body:body]
        def content=render(template:template,model:model)
        out<<content
    }
   
}