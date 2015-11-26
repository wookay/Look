run:
	xcodebuild -workspace samples/LookSample/LookSample.xcodeproj/project.xcworkspace -scheme LookSample -sdk iphonesimulator build test | xcpretty -c
