
class Grm < Formula
    desc  "Minimalist npm registry manager (Use like Nrm)"
    homepage  "https://github.com/modern-magic/grm"
    version "0.7.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.7.0/grm-darwin-64.tar.gz"
            sha256  "f30b26243205c3f3ecbd5ffec1902c2a5c7bbff826b2f615a06d66167663430d"

            def install
                bin.install "grm"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/modern-magic/grm/releases/download/v0.7.0/grm-darwin-arm64.tar.gz"
            sha256  "edaff01f0b9527a2841f60263c5e69f3c53c880a04b55a81398c669fd7d6b140"

            def install
                bin.install "grm"
            end
        end
    end

    on_linux do
        if  Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/modern-magic/grm/releases/download/v0.7.0/grm-linux-arm64.tar.gz"
            sha256  "08a76b3a73e29e8427cc8865b1a0b5db95d443a3b56aaacacd47beed5322a55a"

            def install
                bin.install "grm"
            end
        end
        if  Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.7.0/grm-linux-64.tar.gz"
            sha256  "ac4d217aa32006e0dc670b96f4b7cc781c848af19a2738b36528a0716b8a4fee"

            def install
                bin.install "grm"
            end
        end
    end
end