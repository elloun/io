Binding clone do(
	if(platform == "darwin",
		dependsOnFramework("CoreAudio")
		dependsOnFramework("AudioToolbox")
	)

	dependsOnLib("avcodec")
	dependsOnLib("avutil")

	dependsOnHeader("ffmpeg/avcodec.h")
	dependsOnLinkOption("-fno-common")

	debs    atPut("avcodec", "libavcodec-dev")
	ebuilds atPut("avcodec", "ffmpeg")
	pkgs    atPut("avcodec", "subversion ffmpeg")
	rpms    atPut("avcodec", "ffmpeg-devel")
)