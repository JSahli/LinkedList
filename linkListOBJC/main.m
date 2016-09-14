//
//  main.m
//  linkListOBJC
//
//  Created by Jesse Sahli on 8/15/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LinkedList *myLinkedList = [[LinkedList alloc]init];
        [myLinkedList insertData:@"one"];
        [myLinkedList insertData:@"two"];
        [myLinkedList insertData:@"three"];
        [myLinkedList insertData:@"four"];
        [myLinkedList insertData:@"five"];
        
        Node *middleNode = [myLinkedList findMiddleNode];
        NSLog(@"middle node contains: %@\n", middleNode.data);
        
    }
    return 0;
}
