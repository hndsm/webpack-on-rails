module ApplicationHelper
  def webpack_bundle_tag(bundle)
    javascript_include_tag(bundle) if Rails.configuration.webpack
  end
end
