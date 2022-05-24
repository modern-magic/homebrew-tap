
class Grm < Formula
    desc  "Minimalist npm registry manager (Use like Nrm)"
    homepage  "https://github.com/modern-magic/grm"
    version "0.6.1"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.6.1/grm-darwin-64.tar.gz"
            sha256  "7ffe92aac07cf8f4e17e7acb4815f9d8a8a5bec8d140603f5c636de3967558af"

            def install
                bin.install "grm"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/modern-magic/grm/releases/download/v0.6.1/grm-darwin-arm64.tar.gz"
            sha256  "2b9b393bf9b646475882c38c025d8d96c983f9eebf5f230f149071635962a889"

            def install
                bin.install "grm"
            end
        end
    end

    on_linux do
        if  Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/modern-magic/grm/releases/download/v0.6.1/grm-linux-arm64.tar.gz"
            sha256  "81fa8639140bad5554776bf10cafea49d10c207c470afda24a1c00bc4ad3718a"

            def install
                bin.install "grm"
            end
        end
        if  Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.6.1/grm-linux-64.tar.gz"
            sha256  "0404020d7d523a598efa419072c39b517995a059350c75002c66c62a576d8b1c"

            def install
                bin.install "grm"
            end
        end
    end
end