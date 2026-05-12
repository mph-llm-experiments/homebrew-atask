cask "atask" do
  version "0.1.0"
  sha256 "441c5635d29aae71cfe4a93c98e75fc877515e543f000530e61cbdb8f1f82015"

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
