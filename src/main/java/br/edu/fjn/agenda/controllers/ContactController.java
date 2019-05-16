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
import br.edu.fjn.agenda.domain.contact.ContactRepository;
import br.edu.fjn.agenda.infrastructure.ContactRepositoryLocalImpl;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Vector;
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
    
    @Inject
    private ContactRepository contactRepository;
    
    @Get("new")
    public void newContact(){
        
    }
    

    @Post("save")
    public void save(Contact contact){
        contactRepository.store(contact);
    }
    
    @Get("list")
    public void list(){
        result.include("contactList",contactRepository.list());
    }
}
