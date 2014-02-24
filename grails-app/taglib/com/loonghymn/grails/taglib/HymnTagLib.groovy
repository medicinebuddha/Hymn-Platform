/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.loonghymn.grails.taglib
import groovy.xml.MarkupBuilder
import com.loonghymn.grails.utils.IdUtil
/**
 *
 * @author loonghymn
 */
class HymnTagLib {
    
    static namespace = "uix"
    def templateRoot="/_uix/"
    
    def emoticon = { attrs, body ->
        def tagName="emoticon"
        def template=templateRoot+tagName
                       
        def model=[mainContent:body(),attrs:attrs,body:body]
        def content=render(template:template,model:model)
        out<<content      
    }
    
    def portlet  = {attrs,body->
        def tagName="portlet"
        def template=templateRoot+tagName
        
        def model=[attrs:attrs,body:body]
        def content=render(template:template,model:model)
        out<<content
    }
    
    
    def dateField={attrs,body->
                
        def tagName="dateField"
        def template=templateRoot+tagName
        
        if(!attrs.id){
            attrs.id=tagName+"_"+IdUtil.generateID()
        }
        
        def model=[attrs:attrs,body:body]
        def content=render(template:template,model:model)
        out<<content
    
    }
    
    def dateTimeField = {attrs,body->
        def tagName="dateTimeField"
        def template=templateRoot+tagName
        
        def model=[attrs:attrs,body:body]
        def content=render(template:template,model:model)
        out<<content
    }
    
    def timeField = {attrs,body->
        def tagName="timeField"
        def template=templateRoot+tagName
        
        def model=[attrs:attrs,body:body]
        def content=render(template:template,model:model)
        out<<content
    }
   
}