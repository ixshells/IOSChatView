//
//  UIView+zxgNSLayoutConstraint.h
//  choreman
//
//  Created by xpwu on 15/12/7.
//  Copyright © 2015年 xpwu. All rights reserved.
//

#import <UIKit/UIKit.h>

//  constant >= 0, 表示view在superview内
//  constant < 0, 表示view在superview外

@interface UIView (Constraint)
-(NSLayoutConstraint*)leadingToSuperView;
-(NSLayoutConstraint*)leadingToSuperView:(CGFloat)constant;
-(NSLayoutConstraint*)leadingToSuperViewMoreThan:(CGFloat)constant;
-(NSLayoutConstraint*)leadingToSuperViewLessThan:(CGFloat)constant;


-(NSLayoutConstraint*)trailingToSuperView;
-(NSLayoutConstraint*)trailingToSuperView:(CGFloat)constant;
-(NSLayoutConstraint*)trailingToSuperViewMoreThan:(CGFloat)constant;
-(NSLayoutConstraint*)trailingToSuperViewLessThan:(CGFloat)constant;

-(NSLayoutConstraint*)topToSuperView;
-(NSLayoutConstraint*)topToSuperView:(CGFloat)constant;
-(NSLayoutConstraint*)topToSuperViewMoreThan:(CGFloat)constant;
-(NSLayoutConstraint*)topToSuperViewLessThan:(CGFloat)constant;

-(NSLayoutConstraint*)bottomToSuperView;
-(NSLayoutConstraint*)bottomToSuperView:(CGFloat)constant;
-(NSLayoutConstraint*)bottomToSuperViewMoreThan:(CGFloat)constant;
-(NSLayoutConstraint*)bottomToSuperViewLessThan:(CGFloat)constant;

-(NSLayoutConstraint*)centerXToSuperView;
-(NSLayoutConstraint*)centerYToSuperView;

-(NSLayoutConstraint*)heightEqualTo:(CGFloat)height;
-(NSLayoutConstraint*)heightMoreThan:(CGFloat)height;
-(NSLayoutConstraint*)heightLessThan:(CGFloat)height;

-(NSLayoutConstraint*)widthEqualTo:(CGFloat)width;
-(NSLayoutConstraint*)widthMoreThan:(CGFloat)width;
-(NSLayoutConstraint*)widthLessThan:(CGFloat)width;
@end
