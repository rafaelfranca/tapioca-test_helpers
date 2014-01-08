require "tapioca/test_helpers/version"
require "action_view"
require "action_view/helpers"
require "action_view/helpers/javascript_helper"

module Tapioca
  module TestHelpers
    include ActionView::Helpers::TagHelper
    include ActionView::Helpers::JavaScriptHelper

    # Public: generates javascript code to disable all animations so that tests
    # won't timeout waiting for animations to run.
    #
    # - Turns off jQuery.fx.
    # - Turns off bootstrap transition support.
    # - Removes the fade class from modal boxes since that uses css animations.
    # - Overrides collapsible elements to avoid waiting for the height css transition.
    def disable_animations
      javascript_tag <<-JAVASCRIPT
        $.fx.off = true;
        $.support.transition = false;

        var disableBootstrapTransitions = function() {
          $('.modal').removeClass('fade');
          $('.collapse').css({ 'transition': 'height 0.005s', '-webkit-transition': 'height 0.005s' });
        };
        $(disableBootstrapTransitions); $(document).ajaxComplete(disableBootstrapTransitions);
      JAVASCRIPT
    end
  end
end
