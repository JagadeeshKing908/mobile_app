package com.mobilesales.util;

import org.mindrot.jbcrypt.BCrypt;

public class PasswordUtil {

    public static boolean checkPassword(String plain, String hashed) {
        return BCrypt.checkpw(plain, hashed);
    }
}
