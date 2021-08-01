package com.project.survey.template.form;

import java.util.Map;

import javax.jcr.LoginException;
import javax.jcr.Node;
import javax.jcr.RepositoryException;
import javax.jcr.Session;

import org.apache.commons.lang.StringUtils;

import info.magnolia.context.MgnlContext;
import info.magnolia.jcr.util.NodeUtil;
import info.magnolia.module.form.processors.AbstractFormProcessor;
import info.magnolia.module.form.processors.FormProcessorFailedException;

public class Q6FormProcessor extends AbstractFormProcessor {

	@Override
	protected void internalProcess(Node content, Map<String, Object> parameters) throws FormProcessorFailedException {
		System.out.println("testing");
		
		String currentUser = MgnlContext.getUser().getName();
		
		try {
			Session session = MgnlContext.getJCRSession("ksa");
			
			Node rootNode = session.getRootNode();
			Node node = null;
			Node matrix = null;
			if(rootNode.hasNode(currentUser)) {
				 node = rootNode.getNode(currentUser);
			}
			else {
				node = NodeUtil.createPath(rootNode, currentUser, "mgnl:content");
			}
			
			if(node.hasNode("q6")) {
				matrix = node.getNode("q6");
			}
			else {
				matrix = NodeUtil.createPath(node, "q6", "mgnl:content");
			}
			
			for (Map.Entry<String, Object> entry : parameters.entrySet()) {
		        if(entry.getValue() != null) {
		        	String str = (String)entry.getValue();
		        	str = org.apache.commons.lang3.StringUtils.normalizeSpace(str);
		        	if(!StringUtils.isEmpty((String) entry.getValue())){
			        	matrix.setProperty(entry.getKey(), str);
			        }		  
		        	}
		        }
			
			session.save();
				
			
		} catch (LoginException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (RepositoryException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
