/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.agenda.controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.edu.fjn.agenda.components.UserSession;
import br.edu.fjn.agenda.domain.user.User;
import javax.inject.Inject;

/**
 *
 * @author leonardo
 */
@Controller
public class LoginController {

    @Inject  //new <ResultImpl - example>
    private Result result;
    @Inject
    private UserSession userSession;
   
    @Get("login")
    public void loginPage() {

    }

    @Post("auth")
    @IncludeParameters
    public void authenticate(String userName, String password) {
        //authRepository
        //userRepository
        //authApplication.findUserByUserNameAndPassord(userName, passord)
        if (userName.equalsIgnoreCase("jose") && password.equals("123")) {
           User user = new User();
           user.setUserName(userName);
           userSession.setUser(user);
           result.redirectTo(HomeController.class).home();
        }else{
            result.include("msgLoginError", "Usuário ou senha inválido!");
            result.redirectTo(this).loginPage();
        }
    }

}
