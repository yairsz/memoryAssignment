//
//  main.m
//  memoryAssignmet
//
//  Created by Yair Szarf on 2/13/14.
//  Copyright (c) 2014 The 2 Handed Consortium. All rights reserved.
//

#import <Foundation/Foundation.h>

void printString (char str[]);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        char (*str)[9];
        int arrayLength;
        
        arrayLength = (int) sizeof(str);
        
        str = malloc(arrayLength * sizeof * str);
        
        for (int i = 0;i < arrayLength;i++) {
            strcpy(str[i], "a");
        }
        
        for (int i = 0;i < arrayLength;i++) {
            printf("%s\n",str[i]);
        }

        
        strcpy(str[3], "c");
        strcpy(str[7], "e");
        
        for (int i = 0;i < arrayLength;i++) {
            printf("%s\n",str[i]);
        }

        free(str);
        
    }
    return 0;
}



