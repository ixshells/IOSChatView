//
//  ChatInputTool.h
//  IOSChatView
//
//  Created by ixshells on 16/4/5.
//  Copyright © 2016年 ixshells. All rights reserved.
//

#ifndef ChatInputTool_h
#define ChatInputTool_h

#import<UIKit/UIKit.h>

@interface ChatInputTool : UIView

@property(nonatomic, strong)UIButton* switchButton;
@property(nonatomic, strong)UIButton* functionButton;

-(void)initView;

@end


@interface ChatTextTool : ChatInputTool

@property(nonatomic, strong)UITextView* inputTextView;

@end

#endif /* ChatInputTool_h */
