
class Grm < Formula
    desc  "Minimalist npm registry manager (Use like Nrm)"
    homepage  "https://github.com/modern-magic/grm"
    version "0.4.1"

    on_macos do 
        if Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.4.1/grm-darwin-64.tar.gz"
            sha256  "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

            def install
                bin.install "grm"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/modern-magic/grm/releases/download/v0.4.1/grm-darwin-arm64.tar.gz"
            sha256  "0475cec11b41fac1592ad4a9d7cfbbb2b8e4251823bf40d8f6eb5b2bb32a81c4"
            
            def install
                bin.install "grm"
            end
        end
    end
end