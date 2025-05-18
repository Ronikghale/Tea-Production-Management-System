package com.teaapp.util;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

/**
 * Utility class for managing HTTP sessions in a web application.
 * Provides methods to set, get, remove session attributes and invalidate sessions.
 */
public class sessionutil {
    
    /**
     * Sets an attribute in the session.
     *
     * @param request the HttpServletRequest from which the session is obtained
     * @param key     the key under which the attribute is stored
     * @param value   the value of the attribute to store in the session
     */
	public static void setAttribute(HttpServletRequest request, String key, Object value) {
        request.getSession(true).setAttribute(key, value);
    }

    /**
     * Retrieves an attribute from the session.
     *
     * @param request the HttpServletRequest from which the session is obtained
     * @param key     the key of the attribute to retrieve
     * @return the attribute value, or null if the attribute does not exist or the session is invalid
     */
	public static Object getAttribute(HttpServletRequest request, String key) {
        return request.getSession(false) != null ? 
        		request.getSession(false).getAttribute(key) : null;
    }

    /**
     * Removes an attribute from the session.
     *
     * @param request the HttpServletRequest from which the session is obtained
     * @param key     the key of the attribute to remove
     */
    public static void removeAttribute(HttpServletRequest request, String key) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.removeAttribute(key);
        }
    }

    /**
     * Invalidates the current session.
     *
     * @param request the HttpServletRequest from which the session is obtained
     */
    public static void invalidateSession(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
    }
}