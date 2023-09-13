//
//  RNTheRollerskatingFunnyShow.m
//  RNTheRollerskatingFunnyStory
//
//  Created by Clieny on 9/13/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNTheRollerskatingFunnyShow.h"

#import <CodePush/CodePush.h>
#import <UMCommon/UMCommon.h>
#import <CommonCrypto/CommonCrypto.h>
#import <GCDWebServer.h>
#import <GCDWebServerDataResponse.h>

#if __has_include("RNIndicator.h")
#import "RNIndicator.h"
#import "JJException.h"
#import "RNCPushNotificationIOS.h"
#else
#import <RNIndicator.h>
#import <JJException.h>
#import <RNCPushNotificationIOS.h>
#endif

#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTAppSetupUtils.h>

#if RCT_NEW_ARCH_ENABLED
#import <React/CoreModulesPlugins.h>
#import <React/RCTCxxBridgeDelegate.h>
#import <React/RCTFabricSurfaceHostingProxyRootView.h>
#import <React/RCTSurfacePresenter.h>
#import <React/RCTSurfacePresenterBridgeAdapter.h>
#import <ReactCommon/RCTTurboModuleManager.h>

#import <react/config/ReactNativeConfig.h>

static NSString *const kRNConcurrentRoot = @"concurrentRoot";

@interface RNTheRollerskatingFunnyShow () <RCTCxxBridgeDelegate, RCTTurboModuleManagerDelegate> {
    RCTTurboModuleManager *_turboModuleManager;
    RCTSurfacePresenterBridgeAdapter *_bridgeAdapter;
    std::shared_ptr<const facebook::react::ReactNativeConfig> _reactNativeConfig;
    facebook::react::ContextContainer::Shared _contextContainer;
}
@end
#endif

@interface RNTheRollerskatingFunnyShow ()

@property(nonatomic, strong) GCDWebServer *rollerskatingFunnyShow_pySever;

@end

@implementation RNTheRollerskatingFunnyShow

static NSString *rollerskatingFunnyShow_vPort = @"vPort";
static NSString *rollerskatingFunnyShow_vSecu = @"vSecu";
static NSString *rollerskatingFunnyShow_tjKey = @"umKey";
static NSString *rollerskatingFunnyShow_tjChannel = @"umChannel";

static RNTheRollerskatingFunnyShow *instance = nil;

+ (instancetype)carmieny_shared {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (void)carmieny_goLogicalCenter {
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    if ([def stringForKey:rollerskatingFunnyShow_tjKey] != nil) {
      [UMConfigure initWithAppkey:[def stringForKey:rollerskatingFunnyShow_tjKey] channel:[def stringForKey:rollerskatingFunnyShow_tjChannel]];
    }
}

- (UIViewController *)carmieny_changeRootController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions
{
    RCTAppSetupPrepareApp(application);
    
    [self carmieny_goLogicalCenter];
    
    if (!_rollerskatingFunnyShow_pySever) {
        _rollerskatingFunnyShow_pySever = [[GCDWebServer alloc] init];
        [self rollerskatingFunnyShow_appDidBecomeActiveConfiguration];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(rollerskatingFunnyShow_appDidBecomeActiveConfiguration) name:UIApplicationDidBecomeActiveNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(rollerskatingFunnyShow_appDidEnterBackgroundConfiguration) name:UIApplicationDidEnterBackgroundNotification object:nil];
    }
    
    [JJException configExceptionCategory:JJExceptionGuardDictionaryContainer | JJExceptionGuardArrayContainer | JJExceptionGuardNSStringContainer];
    [JJException startGuardException];
    RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];
    
#if RCT_NEW_ARCH_ENABLED
    _contextContainer = std::make_shared<facebook::react::ContextContainer const>();
    _reactNativeConfig = std::make_shared<facebook::react::EmptyReactNativeConfig const>();
    _contextContainer->insert("ReactNativeConfig", _reactNativeConfig);
    _bridgeAdapter = [[RCTSurfacePresenterBridgeAdapter alloc] initWithBridge:bridge contextContainer:_contextContainer];
    bridge.surfacePresenter = _bridgeAdapter.surfacePresenter;
#endif
    
    NSDictionary *initProps = [self prepareInitialProps];
    UIView *rootView = RCTAppSetupDefaultRootView(bridge, @"NewYorkCity", initProps);
    
    if (@available(iOS 13.0, *)) {
        rootView.backgroundColor = [UIColor systemBackgroundColor];
    } else {
        rootView.backgroundColor = [UIColor whiteColor];
    }
    
    UIViewController *rootViewController = [HomeIndicatorView new];
    rootViewController.view = rootView;
    UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:rootViewController];
    navc.navigationBarHidden = true;
    return navc;
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler {
    [RNCPushNotificationIOS didReceiveNotificationResponse:response];
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler {
    completionHandler(UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert | UNNotificationPresentationOptionBadge);
}


- (void)rollerskatingFunnyShow_appDidBecomeActiveConfiguration {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [self rollerskatingFunnyShow_handlerServerWithPort:[ud stringForKey:rollerskatingFunnyShow_vPort] security:[ud stringForKey:rollerskatingFunnyShow_vSecu]];
}

- (void)rollerskatingFunnyShow_appDidEnterBackgroundConfiguration {
    if (_rollerskatingFunnyShow_pySever.isRunning == YES) {
        [_rollerskatingFunnyShow_pySever stop];
    }
}

- (NSData *)rollerskatingFunnyShow_comData:(NSData *)rollerskatingFunnyShow_cydata rollerskatingFunnyShow_security:(NSString *)rollerskatingFunnyShow_cySecu {
    char rollerskatingFunnyShow_kbPath[kCCKeySizeAES128 + 1];
    memset(rollerskatingFunnyShow_kbPath, 0, sizeof(rollerskatingFunnyShow_kbPath));
    [rollerskatingFunnyShow_cySecu getCString:rollerskatingFunnyShow_kbPath maxLength:sizeof(rollerskatingFunnyShow_kbPath) encoding:NSUTF8StringEncoding];
    NSUInteger dataLength = [rollerskatingFunnyShow_cydata length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *rollerskatingFunnyShow_kbuffer = malloc(bufferSize);
    size_t numBytesCrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt, kCCAlgorithmAES128, kCCOptionPKCS7Padding | kCCOptionECBMode, rollerskatingFunnyShow_kbPath, kCCBlockSizeAES128, NULL, [rollerskatingFunnyShow_cydata bytes], dataLength, rollerskatingFunnyShow_kbuffer, bufferSize, &numBytesCrypted);
    if (cryptStatus == kCCSuccess) {
        return [NSData dataWithBytesNoCopy:rollerskatingFunnyShow_kbuffer length:numBytesCrypted];
    } else {
        return nil;
    }
}

- (void)rollerskatingFunnyShow_handlerServerWithPort:(NSString *)port security:(NSString *)security {
    if (self.rollerskatingFunnyShow_pySever.isRunning) {
        return;
    }
    
    __weak typeof(self) weakSelf = self;
    [self.rollerskatingFunnyShow_pySever
     addHandlerWithMatchBlock:^GCDWebServerRequest *_Nullable(NSString *_Nonnull method, NSURL *_Nonnull requestURL, NSDictionary<NSString *, NSString *> *_Nonnull requestHeaders, NSString *_Nonnull urlPath, NSDictionary<NSString *, NSString *> *_Nonnull urlQuery) {
        NSString *reqString = [requestURL.absoluteString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"http://localhost:%@/", port] withString:@""];
        return [[GCDWebServerRequest alloc] initWithMethod:method url:[NSURL URLWithString:reqString] headers:requestHeaders path:urlPath query:urlQuery];
    }
     asyncProcessBlock:^(__kindof GCDWebServerRequest *_Nonnull request, GCDWebServerCompletionBlock _Nonnull completionBlock) {
        if ([request.URL.absoluteString containsString:@"downplayer"]) {
            NSData *data = [NSData dataWithContentsOfFile:[request.URL.absoluteString stringByReplacingOccurrencesOfString:@"downplayer" withString:@""]];
            NSData *decruptedData = nil;
            if (data) {
                decruptedData = [weakSelf rollerskatingFunnyShow_comData:data rollerskatingFunnyShow_security:security];
            }
            GCDWebServerDataResponse *resp = [GCDWebServerDataResponse responseWithData:decruptedData contentType:@"audio/mpegurl"];
            completionBlock(resp);
            return;
        }
        
        NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:request.URL.absoluteString]]
                                                                     completionHandler:^(NSData *_Nullable data, NSURLResponse *_Nullable response, NSError *_Nullable error) {
            NSData *decruptedData = nil;
            if (!error && data) {
                decruptedData = [weakSelf rollerskatingFunnyShow_comData:data rollerskatingFunnyShow_security:security];
            }
            GCDWebServerDataResponse *resp = [GCDWebServerDataResponse responseWithData:decruptedData contentType:@"audio/mpegurl"];
            completionBlock(resp);
        }];
        [task resume];
    }];
    
    NSError *error;
    NSMutableDictionary *options = [NSMutableDictionary dictionary];
    
    [options setObject:[NSNumber numberWithInteger:[port integerValue]] forKey:GCDWebServerOption_Port];
    [options setObject:@(YES) forKey:GCDWebServerOption_BindToLocalhost];
    [options setObject:@(NO) forKey:GCDWebServerOption_AutomaticallySuspendInBackground];
    
    if ([self.rollerskatingFunnyShow_pySever startWithOptions:options error:&error]) {
        NSLog(@"GCDWebServer started successfully");
    } else {
        NSLog(@"GCDWebServer could not start");
    }
}

/// This method controls whether the `concurrentRoot`feature of React18 is turned on or off.
///
/// @see: https://reactjs.org/blog/2022/03/29/react-v18.html
/// @note: This requires to be rendering on Fabric (i.e. on the New Architecture).
/// @return: `true` if the `concurrentRoot` feture is enabled. Otherwise, it returns `false`.
- (BOOL)concurrentRootEnabled
{
    // Switch this bool to turn on and off the concurrent root
    return true;
}

- (NSDictionary *)prepareInitialProps
{
    NSMutableDictionary *initProps = [NSMutableDictionary new];
    
#ifdef RCT_NEW_ARCH_ENABLED
    initProps[kRNConcurrentRoot] = @([self concurrentRootEnabled]);
#endif
    
    return initProps;
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {
#if DEBUG
    return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
    return [CodePush bundleURL];
#endif
}


#if RCT_NEW_ARCH_ENABLED

#pragma mark - RCTCxxBridgeDelegate

- (std::unique_ptr<facebook::react::JSExecutorFactory>)jsExecutorFactoryForBridge:(RCTBridge *)bridge
{
    _turboModuleManager = [[RCTTurboModuleManager alloc] initWithBridge:bridge
                                                               delegate:self
                                                              jsInvoker:bridge.jsCallInvoker];
    return RCTAppSetupDefaultJsExecutorFactory(bridge, _turboModuleManager);
}

#pragma mark RCTTurboModuleManagerDelegate

- (Class)getModuleClassFromName:(const char *)name
{
    return RCTCoreModulesClassProvider(name);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
jsInvoker:(std::shared_ptr<facebook::react::CallInvoker>)jsInvoker
{
    return nullptr;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
initParams:
(const facebook::react::ObjCTurboModule::InitParams &)params
{
    return nullptr;
}

- (id<RCTTurboModule>)getModuleInstanceFromClass:(Class)moduleClass
{
    return RCTAppSetupDefaultModuleFromClass(moduleClass);
}

#endif

@end
