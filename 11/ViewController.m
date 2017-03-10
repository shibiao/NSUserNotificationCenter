//
//  ViewController.m
//  11
//
//  Created by sycf_ios on 2017/3/10.
//  Copyright © 2017年 shibiao. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()<NSUserNotificationCenterDelegate>

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSUserNotificationCenter defaultUserNotificationCenter].delegate = self;
    // Do any additional setup after loading the view.
}
- (IBAction)notification:(id)sender {
    NSUserNotification *notification =[[ NSUserNotification alloc]init];
    notification.title = @"标题";
    notification.informativeText = @"内容";
    notification.soundName = NSUserNotificationDefaultSoundName;
    [notification setHasActionButton:YES];
    [notification setHasReplyButton:YES];
//    [notification setValue:@YES forKey:@"_showsButtons"];
//    notification.actionButtonTitle = @"done";
//    notification.otherButtonTitle = @"cancel";
    [[NSUserNotificationCenter defaultUserNotificationCenter]deliverNotification:notification];
}
//代理方法
-(BOOL)userNotificationCenter:(NSUserNotificationCenter *)center shouldPresentNotification:(NSUserNotification *)notification{
    return YES;
}
- (void)userNotificationCenter:(NSUserNotificationCenter *)center didDeliverNotification:(NSUserNotification *)notification{
    
}
- (void)userNotificationCenter:(NSUserNotificationCenter *)center didActivateNotification:(NSUserNotification *)notification{
    
}
- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
