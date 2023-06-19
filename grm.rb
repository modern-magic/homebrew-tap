
class Grm < Formula
    desc  "Minimalist npm registry manager (Use like Nrm)"
    homepage  "https://github.com/modern-magic/grm"
    version "0.9.2"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.9.2/grm-darwin-64.tar.gz"
            sha256  "2b032fbec9ab6a83fb975cc9dc77a837e1a2601e9ffb48508a4fde28c8e9bd00"

            def install
                bin.install "grm"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/modern-magic/grm/releases/download/v0.9.2/grm-darwin-arm64.tar.gz"
            sha256  "d810fe7e4554c3cf21896447f7bb517a03c7e34916179cf95d40d0f402f8ac51"

            def install
                bin.install "grm"
            end
        end
    end

    on_linux do
        if  Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/modern-magic/grm/releases/download/v0.9.2/grm-linux-arm64.tar.gz"
            sha256  "73d2283e7837277ef2bc047888d3d6ac26803ef3d8bbb31adb52ddfb1a4e3724"

            def install
                bin.install "grm"
            end
        end
        if  Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.9.2/grm-linux-64.tar.gz"
            sha256  "73dc46d15f9f58f906f23445f441e484689e1f532e63683780dc2bfdf8a34ec3"

            def install
                bin.install "grm"
            end
        end
    end
end