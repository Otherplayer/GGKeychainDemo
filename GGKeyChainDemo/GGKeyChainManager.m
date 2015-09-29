//
//  GGKeyChainManager.m
//  GGKeyChainDemo
//
//  Created by __无邪_ on 15/9/29.
//  Copyright © 2015年 __无邪_. All rights reserved.
//

#import "GGKeyChainManager.h"
#import <UICKeyChainStore.h>


NSString *const kUsername = @"kUsername";
NSString *const kPassword = @"kPassword";

@interface GGKeyChainManager ()
@property (nonatomic, strong)UICKeyChainStore *keychainItem;
@end

@implementation GGKeyChainManager

+ (instancetype)sharedInstance{
    static GGKeyChainManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[GGKeyChainManager alloc] init];
        manager.keychainItem = [[UICKeyChainStore alloc] initWithService:@"com.hotyq"];
    });
    return manager;
}

//(id)kSecAttrAccount
//(id)kSecValueData

- (void)setUsername:(NSString *)username password:(NSString *)password{
    if (username && username.length > 0) {
        [self.keychainItem setString:username forKey:kUsername];
    }
    if (password && password.length > 0) {
        [self.keychainItem setString:password forKey:kPassword];
    }
}


- (NSString *)username{
    return [self.keychainItem stringForKey:kUsername];
}

- (NSString *)password{
    return [self.keychainItem stringForKey:kPassword];
}


- (void)clear{

}




@end
