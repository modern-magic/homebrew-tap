
class Grm < Formula
    desc  "Minimalist npm registry manager (Use like Nrm)"
    homepage  "https://github.com/modern-magic/grm"
    version "0.8.0"

    on_macos do
        if Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.8.0/grm-darwin-64.tar.gz"
            sha256  "820D2B0AB0BA97F5E243E5819BDCD73537801F2882E78F8FFA87AE32673E9425"

            def install
                bin.install "grm"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/modern-magic/grm/releases/download/v0.8.0/grm-darwin-arm64.tar.gz"
            sha256  "AF9763A5E0FBBB3091031534EB1892DB53EAB8D95629EDD51814D46FF67BE966"

            def install
                bin.install "grm"
            end
        end
    end

    on_linux do
        if  Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/modern-magic/grm/releases/download/v0.8.0/grm-linux-arm64.tar.gz"
            sha256  "513993A353F5C9E340288AD5CD67EB870FFAD159B2181889DC34D809C9ACD3A2"

            def install
                bin.install "grm"
            end
        end
        if  Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.8.0/grm-linux-64.tar.gz"
            sha256  "3C0C6D1044EF289036C4C9E48D6B4232F90029F50AD7C661C0BAD5EFC49883C6"

            def install
                bin.install "grm"
            end
        end
    end
end