/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.agenda.infrastructure;

import br.edu.fjn.agenda.domain.contact.Contact;
import br.edu.fjn.agenda.domain.contact.ContactRepository;
import java.util.ArrayList;
import java.util.List;
import javax.enterprise.context.ApplicationScoped;

/**
 *
 * @author leonardo
 * Just for teaching
 */
@ApplicationScoped 
public class ContactRepositoryLocalImpl implements ContactRepository{

    private List<Contact> contactList = new ArrayList<>();

    public ContactRepositoryLocalImpl() {
        //In real world never do that
         Contact contact = new Contact();
         contact.setName("Contact Default");
         contact.setEmail("email default");
         contact.setPhoneNumber("12412 default");
         contactList.add(contact);
    }
    
    
    
    @Override
    public Contact store(Contact contact) {
        contactList.add(contact);
        return contact; 
    }

    @Override
    public Contact findByEmail(String email) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Contact> list() {
        return contactList;
    }

    @Override
    public Contact findByCode(String code) {
        Contact result = null;  
        for(Contact contact: contactList){
            if (contact.getCode().equalsIgnoreCase(code)){
               result = contact;
               break;
            }
        }
        return result;
    }

    @Override
    public Contact update(Contact contactToUpdate) {
        int positionUpdate = contactList.indexOf(contactToUpdate);
        System.out.println("posit" + positionUpdate);
        return contactList.set(positionUpdate, contactToUpdate);
    }
    
}
