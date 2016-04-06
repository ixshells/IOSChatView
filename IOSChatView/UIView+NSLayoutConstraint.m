//
//  UIView+zxgNSLayoutConstraint.m
//  choreman
//
//  Created by xpwu on 15/12/7.
//  Copyright © 2015年 xpwu. All rights reserved.
//

#import "UIView+NSLayoutConstraint.h"
#import "NSObject+NSLayoutConstraint.h"

@implementation UIView (zxgNSLayoutConstraint)

#pragma mark leading

-(NSLayoutConstraint*)leadingToSuperView {
  return [self leadingToSuperView:0];
}
-(NSLayoutConstraint*)leadingToSuperView:(CGFloat)constant {
  NSLayoutConstraint* con = [super leadingEqualTo:self.superview add:constant];
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}
-(NSLayoutConstraint*)leadingToSuperViewLessThan:(CGFloat)constant {
  NSLayoutConstraint* con;
  if (constant >= 0) {
    con = [NSLayoutConstraint constraintWithItem:self
                                   attribute:NSLayoutAttributeLeading
                                   relatedBy:NSLayoutRelationLessThanOrEqual
                                      toItem:self.superview
                                   attribute:NSLayoutAttributeLeading
                                  multiplier:1
                                    constant:constant];
  } else {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeLeading
                                       relatedBy:NSLayoutRelationGreaterThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeLeading
                                      multiplier:1
                                        constant:constant];
  }
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}
-(NSLayoutConstraint*)leadingToSuperViewMoreThan:(CGFloat)constant {
  NSLayoutConstraint* con;
  if (constant >= 0) {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeLeading
                                       relatedBy:NSLayoutRelationGreaterThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeLeading
                                      multiplier:1
                                        constant:constant];
  } else {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeLeading
                                       relatedBy:NSLayoutRelationLessThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeLeading
                                      multiplier:1
                                        constant:constant];
  }
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}

-(NSLayoutConstraint*)leadingToTrailing:(id)second
{
    NSLayoutConstraint* con =  [super leadingToTrailing:second];
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
        [self.superview addConstraint:con];
    } else {
        con.active = YES;
    }
    return con;
}

-(NSLayoutConstraint*)leadingToTrailing:(id)second add:(CGFloat)constant
{
    NSLayoutConstraint* con =  [super leadingToTrailing:second add:constant];
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
        [self.superview addConstraint:con];
    } else {
        con.active = YES;
    }
    return con;
}


#pragma mark trailing

-(NSLayoutConstraint*)trailingToSuperView {
  return [self trailingToSuperView:0];
}
-(NSLayoutConstraint*)trailingToSuperView:(CGFloat)constant {
  NSLayoutConstraint* con = [super trailingEqualTo:self.superview minus:constant];
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}
-(NSLayoutConstraint*)trailingToSuperViewLessThan:(CGFloat)constant {
  NSLayoutConstraint* con;
  if (constant >= 0) {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeTrailing
                                       relatedBy:NSLayoutRelationGreaterThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeTrailing
                                      multiplier:1
                                        constant:-constant];
  } else {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeTrailing
                                       relatedBy:NSLayoutRelationLessThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeTrailing
                                      multiplier:1
                                        constant:-constant];
  }
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}
-(NSLayoutConstraint*)trailingToSuperViewMoreThan:(CGFloat)constant {
  NSLayoutConstraint* con;
  if (constant >= 0) {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeTrailing
                                       relatedBy:NSLayoutRelationLessThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeTrailing
                                      multiplier:1
                                        constant:-constant];
  } else {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeTrailing
                                       relatedBy:NSLayoutRelationGreaterThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeTrailing
                                      multiplier:1
                                        constant:-constant];
  }
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}


-(NSLayoutConstraint*)trailingToLeading:(id)second
{
    NSLayoutConstraint* con = [super trailingToLeading:second];
    
    if([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0)
    {
        [self.superview addConstraint:con];
    }
    else
    {
        con.active = YES;
    }
    
    return con;
}


-(NSLayoutConstraint*)trailingToLeading:(id)second minus:(CGFloat)constant
{
    NSLayoutConstraint* con = [super trailingToLeading:second minus:constant];
    
    if([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0)
    {
        [self.superview addConstraint:con];
    }
    else
    {
        con.active = YES;
    }
    
    return con;
}

#pragma mark top

-(NSLayoutConstraint*)topToSuperView {
  return [self topToSuperView:0];
}
-(NSLayoutConstraint*)topToSuperView:(CGFloat)constant {
  NSLayoutConstraint* con = [super topEqualTo:self.superview add:constant];
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}
-(NSLayoutConstraint*)topToSuperViewLessThan:(CGFloat)constant {
  NSLayoutConstraint* con;
  if (constant >= 0) {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeTop
                                       relatedBy:NSLayoutRelationLessThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeTop
                                      multiplier:1
                                        constant:constant];
  } else {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeTop
                                       relatedBy:NSLayoutRelationGreaterThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeTop
                                      multiplier:1
                                        constant:constant];
  }
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}
-(NSLayoutConstraint*)topToSuperViewMoreThan:(CGFloat)constant {
  NSLayoutConstraint* con;
  if (constant >= 0) {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeTop
                                       relatedBy:NSLayoutRelationGreaterThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeTop
                                      multiplier:1
                                        constant:constant];
  } else {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeTop
                                       relatedBy:NSLayoutRelationLessThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeTop
                                      multiplier:1
                                        constant:constant];
  }
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}

-(NSLayoutConstraint*)topToBottom:(id)second
{
    NSLayoutConstraint* con = [super topToBottom:second];
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
        [self.superview addConstraint:con];
    } else {
        con.active = YES;
    }
    return con;
}

-(NSLayoutConstraint*)topToBottom:(id)second add:(CGFloat)constant
{
    NSLayoutConstraint* con = [super topToBottom:second add:constant];
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
        [self.superview addConstraint:con];
    } else {
        con.active = YES;
    }
    return con;
}


#pragma mark bottom

-(NSLayoutConstraint*)bottomToSuperView {
  return [self bottomToSuperView:0];
}
-(NSLayoutConstraint*)bottomToSuperView:(CGFloat)constant {
  NSLayoutConstraint* con = [super bottomEqualTo:self.superview minus:constant];
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}
-(NSLayoutConstraint*)bottomToSuperViewLessThan:(CGFloat)constant {
  NSLayoutConstraint* con;
  if (constant >= 0) {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationGreaterThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeBottom
                                      multiplier:1
                                        constant:-constant];
  } else {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationLessThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeBottom
                                      multiplier:1
                                        constant:-constant];
  }
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}
-(NSLayoutConstraint*)bottomToSuperViewMoreThan:(CGFloat)constant {
  NSLayoutConstraint* con;
  if (constant >= 0) {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationLessThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeBottom
                                      multiplier:1
                                        constant:-constant];
  } else {
    con = [NSLayoutConstraint constraintWithItem:self
                                       attribute:NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationGreaterThanOrEqual
                                          toItem:self.superview
                                       attribute:NSLayoutAttributeBottom
                                      multiplier:1
                                        constant:-constant];
  }
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}

-(NSLayoutConstraint*)bottomToTop:(id)second
{
    NSLayoutConstraint* con = [super bottomToTop:second];
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
        [self.superview addConstraint:con];
    } else {
        con.active = YES;
    }
    return con;
}

-(NSLayoutConstraint*)bottomToTop:(id)second add:(CGFloat)constant
{
    NSLayoutConstraint* con = [super bottomToTop:second minus:constant];
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
        [self.superview addConstraint:con];
    } else {
        con.active = YES;
    }
    return con;
}


#pragma mark center

-(NSLayoutConstraint*)centerXToSuperView {
  NSLayoutConstraint* con = [super centerXEqualTo:self.superview];
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}

-(NSLayoutConstraint*)centerYToSuperView {
  NSLayoutConstraint* con = [super centerYEqualTo:self.superview];
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self.superview addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}

-(NSLayoutConstraint*)heightEqualTo:(CGFloat)height {
  NSLayoutConstraint* con = [super heightEqualTo:height];
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}
-(NSLayoutConstraint*)heightLessThan:(CGFloat)height {
  NSLayoutConstraint* con = [NSLayoutConstraint constraintWithItem:self
                                                         attribute:NSLayoutAttributeHeight
                                                         relatedBy:NSLayoutRelationLessThanOrEqual
                                                            toItem:nil
                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                        multiplier:1
                                                          constant:height];
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}
-(NSLayoutConstraint*)heightMoreThan:(CGFloat)height {
  NSLayoutConstraint* con = [NSLayoutConstraint constraintWithItem:self
                                                         attribute:NSLayoutAttributeHeight
                                                         relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                            toItem:nil
                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                        multiplier:1
                                                          constant:height];
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}

-(NSLayoutConstraint*)widthEqualTo:(CGFloat)width {
  NSLayoutConstraint* con = [super widthEqualTo:width];
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}
-(NSLayoutConstraint*)widthLessThan:(CGFloat)width {
  NSLayoutConstraint* con = [NSLayoutConstraint constraintWithItem:self
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationLessThanOrEqual
                                                            toItem:nil
                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                        multiplier:1
                                                          constant:width];
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}
-(NSLayoutConstraint*)widthMoreThan:(CGFloat)width {
  NSLayoutConstraint* con = [NSLayoutConstraint constraintWithItem:self
                                                         attribute:NSLayoutAttributeWidth
                                                         relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                            toItem:nil
                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                        multiplier:1
                                                          constant:width];
  if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
    [self addConstraint:con];
  } else {
    con.active = YES;
  }
  return con;
}


@end




