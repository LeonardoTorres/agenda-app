/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fjn.agenda.intercepts;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.edu.fjn.agenda.annotations.Private;
import br.edu.fjn.agenda.components.UserSession;
import br.edu.fjn.agenda.controllers.LoginController;
import javax.inject.Inject;

/**
 *
 * @author leonardo
 */
@Intercepts
public class AuthIntercept implements Interceptor {

    @Inject
    private UserSession userSession;
    @Inject
    private Result result;

    @Override
    public void intercept(InterceptorStack is, ControllerMethod cm, Object o) throws InterceptionException {
        if (userSession.getUser() == null) {
            result.redirectTo(LoginController.class).loginPage();
        } else {
            is.next(cm, o);
        }

    }

    @Override
    public boolean accepts(ControllerMethod cm) {
        return cm.getController().getType().isAnnotationPresent(Private.class)
                || cm.containsAnnotation(Private.class);
    }

}
