//
//  LinkedList.m
//  linkListOBJC
//
//  Created by Jesse Sahli on 8/15/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList



- (instancetype)init
{
    self = [super init];
    if (self) {
        _head = [[Node alloc]init];
    }
    return self;
}


//Inserting data into linked list

-(void)insertData: (id) data {
    
    Node *newNode = [[Node alloc]init];
    newNode.data = data;
    newNode.link = self.head.link;
    self.head.link = newNode;
}


//Given a linked list and and the index of a node (e.g. the position of a node), delete the next node. If index n is given then we delete node at index n+1

-(void)deleteNodeAfterIndex: (int) index {
    
    Node *myNode = self.head;
    
    for (int i = 0; i < index; i++) {
        myNode = myNode.link;
    }
    
    Node *nodeToDelete = myNode.link;
    Node *secondLink = myNode.link.link;
    myNode.link = secondLink;
    
    nodeToDelete = nil;
}


//Finding the middle node of the linked list

-(Node*)findMiddleNode {
    
    Node *myNode = self.head;
    int nodeCounter = 0;
    
    while (myNode.link != NULL) {
        myNode = myNode.link;
        nodeCounter++;
    }
    
    int middle = nodeCounter / 2;
    
    myNode = self.head;
    for (int i = 0; i <= middle; i++) {
        myNode = myNode.link;
    }
    return myNode;
}


@end
