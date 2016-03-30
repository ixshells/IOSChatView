//
//  NSObject+zxgNSLayoutConstraint.h
//  choreman
//
//  Created by xpwu on 15/12/7.
//  Copyright © 2015年 xpwu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSObject (NSLayoutConstraint)
-(NSLayoutConstraint*)leadingEqualTo:(id)second add:(CGFloat)constant;
-(NSLayoutConstraint*)leadingEqualTo:(id)second;
-(NSLayoutConstraint*)leadingToTrailing:(id)second add:(CGFloat)constant;
-(NSLayoutConstraint*)leadingToTrailing:(id)second;

-(NSLayoutConstraint*)trailingToLeading:(id)second minus:(CGFloat)constant;
-(NSLayoutConstraint*)trailingToLeading:(id)second;
-(NSLayoutConstraint*)trailingEqualTo:(id)second minus:(CGFloat)constant;
-(NSLayoutConstraint*)trailingEqualTo:(id)second;

-(NSLayoutConstraint*)centerXEqualTo:(id)second add:(CGFloat)constant;//center1.x = center2.x
-(NSLayoutConstraint*)centerXEqualTo:(id)second;
-(NSLayoutConstraint*)centerYEqualTo:(id)second add:(CGFloat)constant;//center1.y = center2.y
-(NSLayoutConstraint*)centerYEqualTo:(id)second;

-(NSLayoutConstraint*)topEqualTo:(id)second add:(CGFloat)constant;
-(NSLayoutConstraint*)topEqualTo:(id)second;
-(NSLayoutConstraint*)topToBottom:(id)second add:(CGFloat)constant;
-(NSLayoutConstraint*)topToBottom:(id)second;

-(NSLayoutConstraint*)bottomEqualTo:(id)second minus:(CGFloat)constant;
-(NSLayoutConstraint*)bottomEqualTo:(id)second;
-(NSLayoutConstraint*)bottomToTop:(id)second minus:(CGFloat)constant;
-(NSLayoutConstraint*)bottomToTop:(id)second;

-(NSLayoutConstraint*)widthEqualTo:(CGFloat)width;
-(NSLayoutConstraint*)widthEqualTo:(id)second mult:(CGFloat)mult;
-(NSLayoutConstraint*)heightEqualTo:(CGFloat)height;
-(NSLayoutConstraint*)heightEqualTo:(id)second mult:(CGFloat)mult;
@end
