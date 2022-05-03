
class Grm < Formula
    desc  "Minimalist npm registry manager (Use like Nrm)"
    homepage  "https://github.com/modern-magic/grm"
    version "0.5.1"

    on_macos do 
        if Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.5.1/grm-darwin-64.tar.gz"
            sha256  "7e10636824319d99f3a84605e6f2274dc00b67b246a174fd4553294d3d366bec"

            def install
                bin.install "grm"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/modern-magic/grm/releases/download/v0.5.1/grm-darwin-arm64.tar.gz"
            sha256  "5a8b80a1e7190294423bf60f6903cb36c2bcebb046a90540e765bfd2c792f737"
            
            def install
                bin.install "grm"
            end
        end
    end

    on_linux do
        if  Hardware::CPU.arm && Hardware::CPU.is_64_bit?
            url "https://github.com/modern-magic/grm/releases/download/v0.5.1/grm-linux-arm64.tar.gz"
            sha256  "1d7c777c1cbcd97eab84f558fdeb1373e4fbd6cfbc6ff85d302141f68ba3e226"

            def install
                bin.install "grm"
            end
        end
        if  Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.5.1/grm-linux-64.tar.gz"
            sha256  "3b340488755988a303f8d6b47dd089c33314bca02f54a712a3f29c5a56fb2ef1"

            def install
                bin.install "grm"
            end
        end
    end
end