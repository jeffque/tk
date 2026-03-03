Gem::Specification.new do |spec|
  spec.name          = "tk-testing"
  spec.version       = "0.0.1-beta"
  spec.authors       = ["Jeff Quesado"]
  spec.email         = ["jeff.quesado@gmail.com"]

  spec.summary       = %q{Some experiments over the original Tk interface module using tcltklib.}
  spec.description   = %q{Some experiments over the original Tk interface module using tcltklib.

    This is a fork of the original tk gem, for testing purpose. Check https://github.com/ruby/tk.}
  spec.homepage      = "https://github.com/jeffque/tk"
  spec.license       = "BSD-2-Clause"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/tk/extconf.rb", "ext/tk/tkutil/extconf.rb"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rake-compiler"

  spec.metadata["msys2_mingw_dependencies"] = "tk"

  puts spec.files
end
