cask "tenable-nessus-agent" do
  version "8.2.0"
  sha256 "9da402a4773681133405563b1f01df01ef1ba40b934ea7c77483bfc97d0365c4"

  url "https://www.tenable.com/downloads/api/v1/public/pages/nessus-agents/downloads/11783/download?i_agree_to_tenable_license_agreement=true"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.tenable.com/downloads/api/v1/public/pages/nessus-agents/downloads/11783/download?i_agree_to_tenable_license_agreement=true"
  name "Tenable Nessus Agent"
  desc "Agent for Nessus vulnerability scanner"
  homepage "https://www.tenable.com/"

  pkg "Install Nessus Agent.pkg"

  uninstall pkgutil:   "com.tenablesecurity.NessusAgent.Preferences",
            delete:    [
              "/Library/NessusAgent",
              "/Library/LaunchDaemons/com.tenablesecurity.nessusagent.plist",
              "/Library/PreferencePanes/Nessus Agent Preferences.prefPane",
              "/private/etc/tenable_tag",
            ],
            launchctl: "com.tenablesecurity.nessusagent"

  caveats do
    license "https://static.tenable.com/prod_docs/tenable_slas.html"
  end
end
