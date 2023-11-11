package com.a2m.sso.constant;

public class SecurityConstants {
    public static final String TOKEN_PREFIX = "Bearer ";
    public static final String HEADER_STRING = "Authorization";
    public static final String ACCESS_TOKEN = "access_token";
    public static final String REDIRECT_URI_KEY = "redirect_uri";
    public static final Integer MAX_AGE = 1 * 24 * 60 * 60;
    public static final String[] PUBLIC_MATCHING_API = {
            "/api/auth/**",
            "/auth/**",
            "/lib/**",
            "/js/**",
            "/css/**",
            "/images/**"
    };
}
