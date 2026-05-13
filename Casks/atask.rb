cask "atask" do
  version "0.1.2"
  sha256 "9b031ad86f8da888fbb86ed923362607976872b1c2c8cb9af7db45147e453ab2"

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
