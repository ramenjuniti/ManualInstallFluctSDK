//
//  ViewController.m
//  ManualInstallFluctSDK
//
//  Created by j-kugizaki on 2022/09/07.
//

#import "ViewController.h"
@import FluctSDK;

@interface ViewController () <FSSRewardedVideoDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    FSSRewardedVideo.sharedInstance.delegate = self;
    
    FSSRewardedVideoSetting *setting = FSSRewardedVideoSetting.defaultSetting;

    setting.activation.fluctActivated = NO;
    setting.debugMode = YES;

    FSSRewardedVideo.sharedInstance.setting = setting;
}
- (IBAction)load:(id)sender {
    [FSSRewardedVideo.sharedInstance loadRewardedVideoWithGroupId:@"1000083204" unitId:@"1000124351"];
}

- (IBAction)show:(id)sender {
    if ([FSSRewardedVideo.sharedInstance hasAdAvailableForGroupId:@"1000083204" unitId:@"1000124351"]) {
            [FSSRewardedVideo.sharedInstance presentRewardedVideoAdForGroupId:@"1000083204" unitId:@"1000124351" fromViewController:self];
        }
}

- (void)rewardedVideoDidLoadForGroupID:(NSString *)groupId unitId:(NSString *)unitId {
    NSLog(@"rewarded video ad did load");
}

- (void)rewardedVideoShouldRewardForGroupID:(NSString *)groupId unitId:(NSString *)unitId {
    NSLog(@"should rewarded for app user");
}

- (void)rewardedVideoDidFailToLoadForGroupId:(NSString *)groupId unitId:(NSString *)unitId error:(NSError *)error {
    // refs: error code list are FSSRewardedVideoError.h
    NSLog(@"rewarded video ad load failed. Because %@", error);
}

- (void)rewardedVideoWillAppearForGroupId:(NSString *)groupId unitId:(NSString *)unitId {
    NSLog(@"rewarded video ad will appear");
}

- (void)rewardedVideoDidAppearForGroupId:(NSString *)groupId unitId:(NSString *)unitId {
    NSLog(@"rewarded video ad did appear");
}

- (void)rewardedVideoWillDisappearForGroupId:(NSString *)groupId unitId:(NSString *)unitId {
    NSLog(@"rewarded video ad will disappear");
}

- (void)rewardedVideoDidDisappearForGroupId:(NSString *)groupId unitId:(NSString *)unitId {
    NSLog(@"rewarded video ad did disappear");
}

- (void)rewardedVideoDidFailToPlayForGroupId:(NSString *)groupId unitId:(NSString *)unitId error:(NSError *)error {
    // refs: error code list are FSSRewardedVideoError.h
    NSLog(@"rewarded video ad play failed. Because %@", error);
}

@end
