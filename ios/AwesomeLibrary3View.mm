#ifdef RCT_NEW_ARCH_ENABLED
#import "AwesomeLibrary3View.h"

#import <react/renderer/components/RNAwesomeLibrary3ViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNAwesomeLibrary3ViewSpec/EventEmitters.h>
#import <react/renderer/components/RNAwesomeLibrary3ViewSpec/Props.h>
#import <react/renderer/components/RNAwesomeLibrary3ViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface AwesomeLibrary3View () <RCTAwesomeLibrary3ViewViewProtocol>

@end

@implementation AwesomeLibrary3View {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<AwesomeLibrary3ViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const AwesomeLibrary3ViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<AwesomeLibrary3ViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<AwesomeLibrary3ViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> AwesomeLibrary3ViewCls(void)
{
    return AwesomeLibrary3View.class;
}

@end
#endif
