//
//  Node.h
//  linkListOBJC
//
//  Created by Jesse Sahli on 8/15/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (strong,nonatomic) Node *link;
@property (strong,nonatomic) id data;

@end
