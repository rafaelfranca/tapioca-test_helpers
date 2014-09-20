require 'test_helper'

class DisableAnimationsTest < MiniTest::Unit::TestCase
  def test_disable_animations_generates_javascript_tag
    expected_result = <<-JAVASCRIPT
<script>
//<![CDATA[
        $.fx.off = true;
        $.fn.affix = $.noop;
        $.support.transition = false;

        var disableBootstrapTransitions = function() {
          $('.modal').removeClass('fade');
          $('.collapse').css({ 'transition': 'height 0.005s', '-webkit-transition': 'height 0.005s' });
        };
        $(disableBootstrapTransitions); $(document).ajaxComplete(disableBootstrapTransitions);

//]]>
</script>
JAVASCRIPT

    assert_equal expected_result.chop, Tapioca::TestHelpers.disable_animations
  end
end
