
class Grm < Formula
    desc  "Minimalist npm registry manager (Use like Nrm)"
    homepage  "https://github.com/modern-magic/grm"
    version "0.9.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.9.0/grm-darwin-64.tar.gz"
            sha256  "79b895344790ea3989e89ad857d314774acc6243338a4466e8883c5f611ab81f"

            def install
                bin.install "grm"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/modern-magic/grm/releases/download/v0.9.0/grm-darwin-arm64.tar.gz"
            sha256  "f0272a76dff7370985221756f307b52e2b05ec7abed9cc453ba77e55214a7452"

            def install
                bin.install "grm"
            end
        end
    end

    on_linux do
        if  Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/modern-magic/grm/releases/download/v0.9.0/grm-linux-arm64.tar.gz"
            sha256  "a465cc6657eaf69e20765d9197fa8469a7770b781b0d9b7db512db5434efeb60"

            def install
                bin.install "grm"
            end
        end
        if  Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.9.0/grm-linux-64.tar.gz"
            sha256  "8e3aa0e8a745fdb3cc734f2013d9cdb8cc4b429e47d808b7e4f0b7790861052d"

            def install
                bin.install "grm"
            end
        end
    end
end