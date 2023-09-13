//
//  RNTheRollerskatingFunnyShow.h
//  RNTheRollerskatingFunnyStory
//
//  Created by Clieny on 9/13/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <React/RCTBridgeDelegate.h>
#import <UserNotifications/UNUserNotificationCenter.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNTheRollerskatingFunnyShow : UIResponder<RCTBridgeDelegate, UNUserNotificationCenterDelegate>

+ (instancetype)carmieny_shared;
- (UIViewController *)carmieny_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
