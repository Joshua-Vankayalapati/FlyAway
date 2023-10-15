package com.example.flyaway;

import jakarta.servlet.http.HttpServlet;


public class StringUtil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public StringUtil() {
        super();
        // TODO Auto-generated constructor stub
    }
   
        // Method to fix SQL field values to prevent SQL injection
        public static String fixSqlFieldValue(String value) {
            // Check if the input value is null
            if (value == null) {
                return null; // Return null if input is null
            }
            
            int length = value.length(); // Get the length of the input string
            StringBuffer fixedValue = new StringBuffer((int)(length * 1.1)); // Create a buffer for the fixed value

            // Loop through each character in the input string
            for (int i = 0; i < length; i++) {
                char c = value.charAt(i); // Get the current character

                // Check if the character is a single quote (')
                if (c == '\'') {
                    fixedValue.append("''"); // If yes, double it (escape single quotes)
                } else {
                    fixedValue.append(c); // Otherwise, append the character as is
                }
            }
            
            return fixedValue.toString(); // Return the fixed value as a string
        }

        // Method to encode HTML tags to prevent HTML injection (XSS) vulnerabilities
        public static String encodeHtmlTag(String tag) {
            // Check if the input tag is null
            if (tag == null) {
                return null; // Return null if input is null
            }

            int length = tag.length(); // Get the length of the input string
            StringBuffer encodedTag = new StringBuffer(2 * length); // Create a buffer for the encoded tag

            // Loop through each character in the input string
            for (int i = 0; i < length; i++) {
                char c = tag.charAt(i); // Get the current character

                // Check for special characters and replace them with HTML entities
                if (c == '<') {
                    encodedTag.append("&lt;"); // Encode '<'
                } else if (c == '>') {
                    encodedTag.append("&gt;"); // Encode '>'
                } else if (c == '&') {
                    encodedTag.append("&amp;"); // Encode '&'
                } else if (c == '"') {
                    encodedTag.append("&quot;"); // Encode '"'
                } else if (c == ' ') {
                    encodedTag.append("&nbsp;"); // Encode space as '&nbsp;'
                } else {
                    encodedTag.append(c); // Append the character as is
                }
            }

            return encodedTag.toString(); // Return the encoded tag as a string
        }
    }


