//
//  AppStyle.h
//  GuidePageExample
//
//  Created by lujh on 2017/4/18.
//  Copyright © 2017年 lujh. All rights reserved.
//

#ifndef AppStyle_h
#define AppStyle_h

#define Nav_Back_Font_M [UIFont systemFontOfSize:14]
#define RGB(r,g,b)      [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]
#define Theme_Color_Red  RGB(231,56,55)
#define Theme_Color_Pink RGB(255,83,123)
#define Theme_Color_White [UIColor whiteColor]

#define Theme_Color_Orange RGB(255,178,148)
#define Theme_Color_Peach RGB(253,184,202)


#define Theme_NavColor   RGB(255,255,255)

#define Theme_TextColor RGB(55,65,75)  //

//导航栏颜色
#define kNavigationBarBg  RGB(206,8,2) //#ce0802

#define KUIScreenWidth [UIScreen mainScreen].bounds.size.width
#define KUIScreenHeight [UIScreen mainScreen].bounds.size.height

#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

#define kScaleH                             (KUIScreenHeight / 667.0)
#define kScaleW                             (KUIScreenWidth / 375.0)
// 1.判断是否为iOS7
#define iOS7 ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0)


//判断是否是ipad
#define ls_isPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
//判断iPhone4系列
#define kiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) && !ls_isPad : NO)
//判断iPhone5系列
#define kiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) && !ls_isPad : NO)
//判断iPhone6 6s 7系列
#define kiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) && !ls_isPad : NO)
//判断iPhoneX，Xs（iPhoneX，iPhoneXs）
#define IS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !ls_isPad : NO)
//判断iPhoneXr
#define IS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !ls_isPad : NO)
//判断iPhoneXsMax
#define IS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size)&& !ls_isPad : NO)

//判断iPhoneX所有系列
#define IS_PhoneXAll (IS_IPHONE_X || IS_IPHONE_Xr || IS_IPHONE_Xs_Max)
#define k_Height_NavContentBar 44.0f
#define k_Height_StatusBar (IS_PhoneXAll? 44.0 : 20.0)
#define k_Height_NavBar (IS_PhoneXAll ? 88.0 : 64.0)
#define k_Height_TabBar (IS_PhoneXAll ? 83.0 : 49.0)


#define ViewController_BackGround [UIColor colorWithRed:243.0/255.0 green:243.0/255.0 blue:243.0/255.0 alpha:1.0]//视图控制器背景颜色
#pragma mark -- 适配相关
//iphoneX的 安全区适配
#define k_BottomSafty                         (IS_PhoneXAll? (34):(0))
#define NavCenterY                          (IS_PhoneXAll? (66):(42))

#define ISIPHONE4                           (KUIScreenHeight==(480))
#define ISIPHONE5                           (KUIScreenHeight==(568))
#define ISIPHONE6                           (KUIScreenHeight==(667))
#define ISIPHONE6P                          (KUIScreenHeight==(736))
#define ISIPHONEX                           (KUIScreenHeight==(812))
#define LSWeakSelf __weak typeof(self) weakSelf = self;

#endif /* AppStyle_h */
