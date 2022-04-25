
class Grm < Formula
    desc    "Minimalist npm registry manager (Use like Nrm)"
    homepage    "https://github.com/modern-magic/grm"
    version "0.4.0"

    on_macos do 
        if Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.4.0/grm-darwin-64.tar.gz"
            sha256  "edea5e601a0b4dd38363080a3451e7fba0ae51a0d88f267dc50af7fd440b9d0a"

            def install
                bin.install "grm"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/modern-magic/grm/releases/download/v0.4.0/grm-darwin-arm64.tar.gz"
            sha256  "7f4e74cead51c1b7bd7ebab1cc8d4bbdd1a04fbcb226d1d8483c143fa4f302e4"
            
            def install
                bin.install "grm"
            end
        end
    end