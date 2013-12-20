//
//  AFNDemoViewController.m
//  CustomizedMethod
//
//  Created by hepeilin on 13-12-20.
//  Copyright (c) 2013年 minfo. All rights reserved.
//

#import "AFNDemoViewController.h"

@interface AFNDemoViewController ()

@end

@implementation AFNDemoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //@"http://example.com/resources.json"
    [self startRequestURL:@"http://www.baidu.com"];
	
}

- (void)startRequestURL:(NSString*)url
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
