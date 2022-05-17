
class Grm < Formula
    desc  "Minimalist npm registry manager (Use like Nrm)"
    homepage  "https://github.com/modern-magic/grm"
    version "0.6.0"

    on_macos do 
        if Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.6.0/grm-darwin-64.tar.gz"
            sha256  "4d8fd6ecbfc27eed787136fd7741722c644c867e1dee925ab71f7f2eed72706d"

            def install
                bin.install "grm"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/modern-magic/grm/releases/download/v0.6.0/grm-darwin-arm64.tar.gz"
            sha256  "352c8ebe7bd993497ced80502c2e05cdf6c14c5bdd69e4fc1146891872452891"
            
            def install
                bin.install "grm"
            end
        end
    end

    on_linux do
        if  Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/modern-magic/grm/releases/download/v0.6.0/grm-linux-arm64.tar.gz"
            sha256  "cf96704c282b243baffd10850c3fd838e1bb4069c28d731181b5231ac3dfffc1"

            def install
                bin.install "grm"
            end
        end
        if  Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.6.0/grm-linux-64.tar.gz"
            sha256  "d3759d9f5e2ca3a140f20edccdb935d8bb24e88af5b85d0a8d851751e57b7c0b"

            def install
                bin.install "grm"
            end
        end
    end
end