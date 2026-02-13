class SkillScanner < Formula
  include Language::Python::Virtualenv

  desc "Security scanner for Agent Skills packages (prompt injection, exfiltration, malicious code)"
  homepage "https://github.com/cisco-ai-defense/skill-scanner"
  url "https://files.pythonhosted.org/packages/9e/3d/3837c1e87d6ede522d737d93f7319248e4832653bddfedcead8f11d5e57c/cisco_ai_skill_scanner-1.0.2.tar.gz"
  sha256 "2ab4a7dc88e3dbf39b2af25c5fee3b768531edac0855a481bf01bb482a34fb0f"
  license "Apache-2.0"

  depends_on "python@3.12"

  # Notes:
  # - This installs the base package only.
  # - Optional extras mentioned upstream: [bedrock], [vertex], [azure], [all]. :contentReference[oaicite:1]{index=1}

  def install
    virtualenv_install_with_resources
  end

  test do
    # CLI entrypoint defined by the project. :contentReference[oaicite:2]{index=2}
    system bin/"skill-scanner", "--help"
  end
end
