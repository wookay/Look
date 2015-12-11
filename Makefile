run:
	xcodebuild -workspace Look/Look.xcworkspace -scheme Pods build | xcpretty -c
	xcodebuild -workspace Look/Look.xcworkspace -scheme C4 build | xcpretty -c
	xcodebuild -workspace Look/Look.xcworkspace -scheme Look build | xcpretty -c
	@echo
	xcodebuild -workspace samples/LookSample/LookSample.xcworkspace -scheme Pods build | xcpretty -c
	xcodebuild -workspace samples/LookSample/LookSample.xcworkspace -scheme C4 build | xcpretty -c
	xcodebuild -workspace samples/LookSample/LookSample.xcworkspace -scheme Look build | xcpretty -c
	xcodebuild -workspace samples/LookSample/LookSample.xcworkspace -scheme LookSample build | xcpretty -c
	xcodebuild -workspace samples/LookSample/LookSample.xcworkspace -scheme LookSampleTests | xcpretty -c
	@echo
	xcodebuild -workspace samples/LookC4Sample/LookC4Sample.xcworkspace -scheme Pods build | xcpretty -c
	xcodebuild -workspace samples/LookC4Sample/LookC4Sample.xcworkspace -scheme C4 build | xcpretty -c
	xcodebuild -workspace samples/LookC4Sample/LookC4Sample.xcworkspace -scheme Look build | xcpretty -c
	xcodebuild -workspace samples/LookC4Sample/LookC4Sample.xcworkspace -scheme LookC4Sample build | xcpretty -c
	xcodebuild -workspace samples/LookC4Sample/LookC4Sample.xcworkspace -scheme LookC4SampleTests | xcpretty -c
