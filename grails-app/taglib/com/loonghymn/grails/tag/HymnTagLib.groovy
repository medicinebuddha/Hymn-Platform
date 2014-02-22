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
    def emoticon = { attrs, body ->
        out << body() << (attrs.happy == 'true' ? " :-)" : " :-(")
    }
    
    def portlet = {attrs,body->
        out<<"<div class='portlet box ${attrs.color?attrs.color:'blue'}'>";
        out<<"<div class='portlet-title'>";
        out<<"<div class='caption'><i class='icon-reorder'></i>${attrs.title}</div>";
        out<<"<div class='tools'>";
        if(attrs.collapse){
            out<<"<a href='javascript:void(0);' class='collapse'></a>";
        }
        if(attrs.config){
            out<<"<a href='#portlet-config' data-toggle='modal' class='config'></a>";
        }
        if(attrs.reload){
            out<<"<a href='javascript:void(0);' class='reload'></a>";
        }
        if(attrs.remove){
            out<<"<a href='javascript:void(0);' class='remove'></a>";
        }
        out<<"</div>";
        out<<"</div>";
        out<<"<div class='portlet-body form'>";
        out<<body();
        out<<"</div></div>";
    }
    
    def dateField={attrs,body->
                
        out << "<div class='form-group'>"
        out << "<label class='control-label col-md-3' for='${attrs.property}'>${attrs.label.encodeAsHTML()}</label>"
        out << "<div class='col-md-9'>"
        out <<" <input  type='text' class='form-control date-picker' id='${attrs.property}' name='${attrs.property}' value='${attrs.value}'"
                
        if(attrs.placeholder){
            out<< "placeholder='${attrs.placeholder}'"
        }
        out<<"/>"
        
        if(attrs.hint){
            out<<"<span class='help-block'>${attrs.hint}</span>"
        }
        
        out <<"</div></div>"
    
    }
    
    def dateTimeField = {attrs,body->
        
    }
   
}