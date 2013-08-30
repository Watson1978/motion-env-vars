path = File.join(NSBundle.mainBundle.resourcePath, 'env-vars.plist')
ENV_VARS = load_plist(File.read(path)) if File.exist?(path)
