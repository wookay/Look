run:
	xctool --version
	xctool -workspace Look/Look.xcworkspace -scheme Pods -sdk iphonesimulator build
	xctool -workspace Look/Look.xcworkspace -scheme Look -sdk iphonesimulator build
	@echo
	xctool -workspace samples/LookSample/LookSample.xcworkspace -scheme LookSampleTests -sdk iphonesimulator test
	@echo
	xctool -workspace samples/LookC4Sample/LookC4Sample.xcworkspace -scheme LookC4SampleTests -sdk iphonesimulator test
