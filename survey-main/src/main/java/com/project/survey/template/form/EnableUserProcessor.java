package com.project.survey.template.form;


import info.magnolia.cms.security.SecuritySupport;
import info.magnolia.cms.security.User;
import info.magnolia.cms.security.UserManager;
import info.magnolia.context.WebContext;
import info.magnolia.module.form.processors.AbstractFormProcessor;
import info.magnolia.module.form.processors.FormProcessorFailedException;
import info.magnolia.module.publicuserregistration.PublicUserRegistrationConfig;
import info.magnolia.module.publicuserregistration.strategy.Mail;

import java.util.Map;

import javax.inject.Inject;
import javax.inject.Provider;
import javax.jcr.Node;

import org.apache.commons.lang3.StringUtils;

/**
 * A simple processor which will enable a user's account, retrieving it using the UUID parameter.
 */
public class EnableUserProcessor extends AbstractFormProcessor {

    private final SecuritySupport securitySupport;
    private final Provider<PublicUserRegistrationConfig> publicUserRegistrationConfigProvider;
    private final Provider<WebContext> webContextProvider;

    @Inject
    public EnableUserProcessor(SecuritySupport securitySupport, Provider<PublicUserRegistrationConfig> publicUserRegistrationConfig, Provider<WebContext> webContextProvider) {
        this.securitySupport = securitySupport;
        this.publicUserRegistrationConfigProvider = publicUserRegistrationConfig;
        this.webContextProvider = webContextProvider;
    }

    @Override
    protected void internalProcess(Node content, Map<String, Object> parameters) throws FormProcessorFailedException {
        final String realm = publicUserRegistrationConfigProvider.get().getConfiguration().getRealmName();

        UserManager um = securitySupport.getUserManager(realm);
        User user = um.getUser(webContextProvider.get().getParameter("username"));

        if (user == null) {
            throw new FormProcessorFailedException("No user with id: " + webContextProvider.get().getParameter(Mail.PROPERTY_USER_ID) + " found in repository");
        }

        um.setProperty(user, "enabled", Boolean.TRUE.toString());
    }
}

