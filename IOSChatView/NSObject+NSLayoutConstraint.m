//
//  NSObject+zxgNSLayoutConstraint.m
//  choreman
//
//  Created by xpwu on 15/12/7.
//  Copyright © 2015年 xpwu. All rights reserved.
//

#import "NSObject+NSLayoutConstraint.h"


@implementation NSObject (NSLayoutConstraint)
-(NSLayoutConstraint*)leadingEqualTo:(id)second add:(CGFloat)con {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeLeading
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:second
                                      attribute:NSLayoutAttributeLeading
                                     multiplier:1
                                       constant:con];
}
-(NSLayoutConstraint*)leadingEqualTo:(id)second {
  return [self leadingEqualTo:second add:0];
}
-(NSLayoutConstraint*)leadingToTrailing:(id)second add:(CGFloat)con {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeLeading
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:second
                                      attribute:NSLayoutAttributeTrailing
                                     multiplier:1
                                       constant:con];
}
-(NSLayoutConstraint*)leadingToTrailing:(id)second {
  return [self leadingToTrailing:second add:0];
}

-(NSLayoutConstraint*)trailingToLeading:(id)second minus:(CGFloat)con {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeTrailing
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:second
                                      attribute:NSLayoutAttributeLeading
                                     multiplier:1
                                       constant:-con];
}
-(NSLayoutConstraint*)trailingToLeading:(id)second {
  return [self trailingToLeading:second minus:0];
}
-(NSLayoutConstraint*)trailingEqualTo:(id)second minus:(CGFloat)con {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeTrailing
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:second
                                      attribute:NSLayoutAttributeTrailing
                                     multiplier:1
                                       constant:-con];
}
-(NSLayoutConstraint*)trailingEqualTo:(id)second {
  return [self trailingEqualTo:second minus:0];
}

-(NSLayoutConstraint*)centerXEqualTo:(id)second add:(CGFloat)con {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeCenterX
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:second
                                      attribute:NSLayoutAttributeCenterX
                                     multiplier:1
                                       constant:con];
}
-(NSLayoutConstraint*)centerXEqualTo:(id)second {
  return [self centerXEqualTo:second add:0];
}
-(NSLayoutConstraint*)centerYEqualTo:(id)second add:(CGFloat)con {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeCenterY
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:second
                                      attribute:NSLayoutAttributeCenterY
                                     multiplier:1
                                       constant:con];
}
-(NSLayoutConstraint*)centerYEqualTo:(id)second {
  return [self centerYEqualTo:second add:0];
}

-(NSLayoutConstraint*)topEqualTo:(id)second add:(CGFloat)con {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeTop
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:second
                                      attribute:NSLayoutAttributeTop
                                     multiplier:1
                                       constant:con];
}
-(NSLayoutConstraint*)topEqualTo:(id)second {
  return [self topEqualTo:second add:0];
}
-(NSLayoutConstraint*)topToBottom:(id)second add:(CGFloat)con {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeTop
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:second
                                      attribute:NSLayoutAttributeBottom
                                     multiplier:1
                                       constant:con];
}
-(NSLayoutConstraint*)topToBottom:(id)second {
  return [self topToBottom:second add:0];
}

-(NSLayoutConstraint*)bottomEqualTo:(id)second minus:(CGFloat)con {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeBottom
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:second
                                      attribute:NSLayoutAttributeBottom
                                     multiplier:1
                                       constant:-con];
}
-(NSLayoutConstraint*)bottomEqualTo:(id)second {
  return [self bottomEqualTo:second minus:0];
}
-(NSLayoutConstraint*)bottomToTop:(id)second minus:(CGFloat)con {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeBottom
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:second
                                      attribute:NSLayoutAttributeTop
                                     multiplier:1
                                       constant:-con];
}
-(NSLayoutConstraint*)bottomToTop:(id)second {
  return [self bottomToTop:second minus:0 ];
}

-(NSLayoutConstraint*)widthEqualTo:(CGFloat)width {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeWidth
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:nil
                                      attribute:NSLayoutAttributeNotAnAttribute
                                     multiplier:1
                                       constant:width];
}
-(NSLayoutConstraint*)widthEqualTo:(id)second mult:(CGFloat)mult {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeWidth
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:second
                                      attribute:NSLayoutAttributeWidth
                                     multiplier:mult
                                       constant:0];
}
-(NSLayoutConstraint*)heightEqualTo:(CGFloat)height {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeHeight
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:nil
                                      attribute:NSLayoutAttributeNotAnAttribute
                                     multiplier:1
                                       constant:height];
}
-(NSLayoutConstraint*)heightEqualTo:(id)second mult:(CGFloat)mult {
  return [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeHeight
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:second
                                      attribute:NSLayoutAttributeHeight
                                     multiplier:mult
                                       constant:0];
}

@end

