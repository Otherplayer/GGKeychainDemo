//
//  GGKeyChainManager.h
//  GGKeyChainDemo
//
//  Created by __无邪_ on 15/9/29.
//  Copyright © 2015年 __无邪_. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GGKeyChainManager : NSObject
+ (instancetype)sharedInstance;


- (void)setUsername:(NSString *)username password:(NSString *)password;

- (NSString *)username;

- (NSString *)password;

- (void)clear;

@end
