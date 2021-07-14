//
//  SceneDelegate.m
//  lesson8
//
//  Created by Yuriy Fedyunkin on 13.07.2021.
//

#import "SceneDelegate.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate

- (void)sceneDidDisconnect:(UIScene *)scene {
    NSLog(@"Scene did diconnect");
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    NSLog(@"Did become active");
}


- (void)sceneWillResignActive:(UIScene *)scene {
    NSLog(@"Will resign active");
}

- (void)sceneWillEnterForeground:(UIScene *)scene {
    NSLog(@"Will enter foreground");
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    NSLog(@"Did enter background");
}


@end
