# Tapioca::TestHelpers

A set of test helper to be used in Rails applications.

## Installation

Add this line to your application's Gemfile:

```
gem 'tapioca-test_helpers'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install tapioca-test_helpers
```

## Usage

### `Tapioca::TestHelpers.disable_animations`

This method generates JavaScript code to disable all animations.

Adding this to your templates will avoid that your tests timeout waiting for animations to run.

To use it includes in the bottom of your template, near to `</body>`

```erb
    <%= Tapioca::TestHelpers.disable_animations if Rails.env.test? %>
  </body>
</html>
```
