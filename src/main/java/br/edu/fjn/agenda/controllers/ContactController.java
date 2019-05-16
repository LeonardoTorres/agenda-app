/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.agenda.controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.fjn.agenda.annotations.Private;
import br.edu.fjn.agenda.domain.contact.Contact;
import javax.inject.Inject;

/**
 *
 * @author leonardo
 */
@Private
@Controller
@Path("contact")
public class ContactController {
    
    @Inject
    private Result result;
    
    
    @Get("new")
    public void newContact(){
        
    }
    

    @Post("save")
    public void save(Contact contact){
        //request.getParameter("name");
        System.out.println("Contact's name " + contact.getPhoneNumber());
         
    }
    
    //public
    @Get("list")
    public void list(){
        
    }
}
