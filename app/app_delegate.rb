class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu    
    buildWindow

    videoView = VLCVideoView.alloc.initWithFrame(@mainWindow.contentView.bounds)
    @mainWindow.contentView.addSubview(videoView)
    videoView.setAutoresizingMask(NSViewHeightSizable|NSViewWidthSizable)

    player = VLCMediaPlayer.alloc.initWithVideoView(videoView)
    player.setMedia(VLCMedia.mediaWithPath(NSBundle.mainBundle.pathForResource("video", withExtension: "mp4")))

    @mainWindow
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless
  end
end
