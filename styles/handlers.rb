Teacup.handler UIView, :nav_background do |image|
  UINavigationBar.appearance.setBackgroundImage(image.uiimage, forBarMetrics:UIBarMetricsDefault)
end

Teacup.handler UIView, :nav_btn_tint do |color|
 	UIBarButtonItem.appearance.setTintColor(color)
end

Teacup.handler UIRoundedRectButton, :button_background do |view, image, text_color|
  text_color ||= UIColor.whiteColor
  view.setBackgroundImage(image.uiimage, forState:UIControlStateNormal)
  view.setTitleColor(text_color, forState:UIControlStateNormal)
end

Teacup.handler UISegmentedControl, :texture do |view, hash|
	view.setDividerImage(hash[:segmentImage].uiimage, forLeftSegmentState: UIControlStateSelected, rightSegmentState: UIControlStateNormal, barMetrics: UIBarMetricsDefault)
	view.setBackgroundImage(hash[:backgroundOn].uiimage, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
end

Teacup.handler UISlider, :texture do |view, hash|
	UISlider.appearance.setMinimumTrackImage(hash[:minImage].uiimage, forState:UIControlStateNormal)
	UISlider.appearance.setMaximumTrackImage(hash[:maxImage].uiimage, forState:UIControlStateNormal)
	UISlider.appearance.setThumbImage(hash[:thumbImage].uiimage, forState:UIControlStateNormal)
end
