using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace The.Rollerskating.Funny.Story.RNTheRollerskatingFunnyStory
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNTheRollerskatingFunnyStoryModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNTheRollerskatingFunnyStoryModule"/>.
        /// </summary>
        internal RNTheRollerskatingFunnyStoryModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNTheRollerskatingFunnyStory";
            }
        }
    }
}
