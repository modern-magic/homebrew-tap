
class Grm < Formula
    desc  "Minimalist npm registry manager (Use like Nrm)"
    homepage  "https://github.com/modern-magic/grm"
    version "0.5.0"

    on_macos do 
        if Hardware::CPU.intel?
            url "https://github.com/modern-magic/grm/releases/download/v0.5.0/grm-darwin-64.tar.gz"
            sha256  "cde83f98f7b47617e52d9d0dd443c298927c3eff498c2846c72706db4059bf23"

            def install
                bin.install "grm"
            end
        end
        if Hardware::CPU.arm?
            url "https://github.com/modern-magic/grm/releases/download/v0.5.0/grm-darwin-arm64.tar.gz"
            sha256  "6c9f5d7157c7caa46b223d1b590134b1a8abf96526c487e07d4cbb347051dd4f"
            
            def install
                bin.install "grm"
            end
        end
    end
end