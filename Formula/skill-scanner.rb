class SkillScanner < Formula
  include Language::Python::Virtualenv

  desc "Security scanner for Agent Skills packages"
  homepage "https://github.com/cisco-ai-defense/skill-scanner"
  url "https://files.pythonhosted.org/packages/9e/3d/3837c1e87d6ede522d737d93f7319248e4832653bddfedcead8f11d5e57c/cisco_ai_skill_scanner-1.0.2.tar.gz"
  sha256 "2ab4a7dc88e3dbf39b2af25c5fee3b768531edac0855a481bf01bb482a34fb0f"
  license "Apache-2.0"

  depends_on "python@3.12"

  resource "python-frontmatter" do
    url "https://files.pythonhosted.org/packages/96/de/910fa208120314a12f9a88ea63e03707261692af782c99283f1a2c8a5e6f/python-frontmatter-1.1.0.tar.gz"
    sha256 "7118d2bd56af9149625745c58c9b51fb67e8d1294a0c76796dafdc72c36e5f6d"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"skill-scanner", "--help"
  end
end
