run:
	xctool --version
	xctool -workspace Look/Look.xcworkspace -scheme Look -destination name="iPhone 5s" -sdk iphonesimulator build
	@echo
	xctool -workspace samples/LookSample/LookSample.xcworkspace -scheme LookSampleTests -destination name="iPhone 5s" -sdk iphonesimulator test
	@echo
	xctool -workspace samples/LookC4Sample/LookC4Sample.xcworkspace -scheme LookC4SampleTests -destination name="iPhone 5s" -sdk iphonesimulator test
