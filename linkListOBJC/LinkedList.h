//
//  LinkedList.h
//  linkListOBJC
//
//  Created by Jesse Sahli on 8/15/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject

@property (strong, nonatomic) Node *head;

-(void)insertData: (id) data;
-(void)deleteNodeAfterIndex: (int) index;
-(Node*)findMiddleNode;

@end
