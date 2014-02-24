/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.loonghymn.grails.utils

/**
 *
 * @author loonghymn
 */
class IdUtil {
    
   

    def  static generateID() {
      
        def NUMBER_OF_CHARS = 5
        def CHARS = ('0'..'9') +
        ('a'..'h') +
        ('j'..'k') +
        ('m'..'z') +
        ('A'..'H') +
        ('J'..'K') +
        ('M'..'Z')

        def random = new Random()
        def id = ""
        for ( i in 1..NUMBER_OF_CHARS ) {
            id += CHARS[random.nextInt(CHARS.size())]
        }
        return id
    }

	
}

