package util;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookies {
	private Map<String, Cookie> cookies = new HashMap<String, Cookie>();
	
	public Cookies(HttpServletRequest request) {
		Cookie[] c = request.getCookies();
		if(c != null) {
			for(int i=0;i<c.length;i++) {
				cookies.put(c[i].getName(), c[i]);
			}
		}
	}
	
	public Cookie getCookies(String name) {
		return cookies.get(name);
	}
	
	public String getValue(String name) throws IOException {
		Cookie c = cookies.get(name);
		if (c == null) {
			return null;
		}
		return URLDecoder.decode(c.getValue(), "utf-8");
	}
	
	public boolean exists(String name) {
		return (cookies.get(name) != null);
	}
	
	public static Cookie createCookie(String name, String value) throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value,"utf-8"));
		return cookie;
	}
	
	public static Cookie createCookie(String name, String value, String path, int maxAge) throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value,"utf-8"));
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		return cookie;
	}
	
	public static Cookie createCookie(String name, String value,String domain, String path, int maxAge) throws IOException {
		Cookie cookie = new Cookie(name, URLEncoder.encode(value,"utf-8"));
		cookie.setDomain(domain);
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		return cookie;
	}
}
