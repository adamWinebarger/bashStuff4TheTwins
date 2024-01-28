//
//  main.c
//  Project 3CD
//
//  Created by adam Winebarger on 11/16/21.
//

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <regex.h>
#include <string.h>

regex_t regex;

void compileRegex(void) {
    int value;
    
    value = regcomp(&regex, "[:word:]", 0);
    
    if (value == 0)
        printf("Regex Compiled\n");
    else
        printf("Didn't Compile\n");
        
}

int size(char *ptr) {
    
    //variable to access the subsequent array elements
    int offset = 0;
    
    //used to count the number of elements in array
    int count = 0;
    
    //while loop to test whether the end of an array has been reached
    while (*(ptr + offset) != '\0') {
        
        //increment count
        ++count;
        
        //advance to next element
        ++offset;
    }
    
    //return size of array
    return count;
}

bool hasNoBrackets(char str[], int len) {
    char brackets[] = "(){}[]";
    
    //printf("%s\n", str);
    
    for (int i = 0; i < len; i++) {
        for (int j = 0; j < 6; j++) {
            //printf("%c %c\n", str[i], brackets[j]);
            if (str[i] == brackets[j]) {
                return false;
            }
        }
    }
    
    return true;
}

bool hasClosingBracketofType(char *str, char c, int occurences) {
    
    char *ptr;
    int index;
    
    //printf("%s \n", str);
    
    ptr = strchr(str, c);
    
    if (ptr == NULL)
        return false;
    
    index = ptr - str;
    char *newstr = str+index;
    
    if (occurences <= 1)
        return true;
    
    return hasClosingBracketofType(newstr, c, occurences - 1);
    
    
}

int compareValues(int a, int b) {
    if (a > b)
        return a;
    return b;
}

int longestValid(char str[]) {

    
    //printf("%s\n", str);
    char *p = str;
    //printf("%s\n", p);
    
    int length = size(p); //foolproof way to get array length
    //printf("%d\n", length);
    
    //printf("%p\n", *p);
    
    //gives us modifiable value for array length
    char string[length];
    
    for (int i = 0; i < length; i++) {
        string[i] = str[i];
    }
    
    
    
    if (hasNoBrackets(string, length))
        return length;
    
    //opening/closing parenthesis, curly-braces, and square-brackets
    int opc = 0, cpc = 0, ocbc = 0, ccbc = 0, osbc = 0, csbc = 0;
    //printf("%s %d\n", str, length);
    
    for (int i = 0; i < length; i++) {
        
        char c[length - i];
        
        switch (string[i]) {
            case ')':
                cpc++;
                if (opc - cpc < 0) {
                    //strncpy(c, &string[i + 1], length - i);
                    //return longestValid(c);
                    return compareValues(longestValid(strncpy(c, &string[i+1], length - i)), longestValid(strncpy(c, &string[0], i-1)));
                }
                break;
            case '}':
                    ccbc++;
                if (ocbc - ccbc < 0) {
                    //strncpy(c, &string[i + 1], length - i);
                    //return longestValid(c);
                    return compareValues(longestValid(strncpy(c, &string[i+1], length - 1)), longestValid(strncpy(c, &string[0], i)));
                }
                break;
            case ']':
                    csbc++;
                if (osbc -csbc < 0) {
                    //strncpy(c, &string[i + 1], length - i);
                    //return longestValid(c);
                    return compareValues(longestValid(strncpy(c, &string[i+1], length - 1)), longestValid(strncpy(c, &string[0], i)));
                }
                break;
            case '(':
                opc++;
                if (!hasClosingBracketofType((str+i), ')', opc)) {
                    if (i >= length - i) {
                        //return i;
                        printf("%s\n", strncpy(c, &string[0], i));
                        return compareValues(longestValid(strncpy(c, &string[i+1], length - 1)), longestValid(strncpy(c, &string[0], i)));
                    } else {
                        return longestValid(str+i);
                    }
                    //return compareValues(longestValid(strncpy(c, &string[i+1], length - i)), longestValid(strncpy(c, &string[0], i)));
                }
                break;
            case '{':
                ocbc++;
                if (!hasClosingBracketofType((str+i), '}', ocbc)) {
//                    if ( i >= length - i)
//                        return i;
//                    else
//                        return longestValid(str+i+1);
                    return compareValues(longestValid(strncpy(c, &string[i+1], length-1)), longestValid(strncpy(c, &string[0], i)));
                }
                break;
            case '[':
                osbc++;
                if (!hasClosingBracketofType((str+i), ']', osbc)) {
//                    if (i >= length - i)
//                        return i;
//                    else
//                        return longestValid(str+i+1);
                    return compareValues(longestValid(strncpy(c, &string[i+1], length-1)), longestValid(strncpy(c, &string[0], i)));
                }
                break;
            default:
                break;
        }
    }
    
    return length;
    
//    char *b = a+2;
//
//    //char string[] = *str;
//    printf("%s %d \n", a, length);
//    printf("%d\n", length + 3);
//
//    int openBracketCount = 0, openCurlyBraceCount = 0, openSquareBracketCount = 0;
//
//    for (int i = 0; i < length; i++) {
//
//    }
    return 3;
}


int main(int argc, const char * argv[]) {
    // insert code here...
    //compileRegex();
    
    
//    char b[] = ")(bananas)";
//    char *bptr = b;
//
//    char *c = (bptr+2);
//    char *d = c+3;
//    c += 2;
//
//    printf("%s\n", c);
//    int g = longestValid(b);
//
//    for (int i = 0; i < sizeof(b) / sizeof(b[0]); i++) {
//        //printf("%d\n", regexec(&regex, "abc", 0, NULL, 0));
//    }
//
//    printf("%d\n", g);
    
    printf("%d\n", longestValid("koala([]"));
    
    char c[100];
    scanf("%s", c);
    printf("%d\n", longestValid(c));
    

    return 0;
}
