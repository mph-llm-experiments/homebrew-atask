cask "atask" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://dist.puddingtime.net/atask/v#{version}/atask_#{version}_aarch64.dmg"
  name "atask"
  desc "Task management for asystem"
  homepage "https://github.com/mph-asystem/atask"

  depends_on arch: :arm64

  app "atask.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/atask.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/net.puddingtime.atask",
    "~/Library/Caches/net.puddingtime.atask",
    "~/Library/WebKit/net.puddingtime.atask"
  ]
end
