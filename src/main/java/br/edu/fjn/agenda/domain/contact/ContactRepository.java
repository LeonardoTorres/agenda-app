/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.agenda.domain.contact;

import java.util.List;

/**
 *
 * @author leonardo
 */
public interface ContactRepository {
    
    Contact store(Contact contact);
    Contact update(Contact contact);
    Contact findByCode(String code);
    Contact findByEmail(String email);
    List<Contact> list();
    
}
