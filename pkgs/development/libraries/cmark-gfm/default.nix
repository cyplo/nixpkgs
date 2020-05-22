{ python3, stdenv, fetchFromGitHub, cmake }:


stdenv.mkDerivation rec {
  version = "0.29.0.gfm.0";
  pname = "cmark-gfm";

  src = fetchFromGitHub {
    owner = "github";
    repo = "cmark-gfm";
    rev = version;
    sha256 = "0wfr3xwl4wria8vld71flv6vpsdj9aj81yqvj0azidyb8p229a1l";
  };

  nativeBuildInputs = [ cmake ];
  buildInputs = [ python3 ];
  doCheck = false;

  meta = with stdenv.lib; {
    description = "GitHub's fork of cmark, a CommonMark parsing and rendering library and program in C";
    homepage = "https://github.com/github/cmark-gfm";
    maintainers = [ maintainers.cyplo ];
    platforms = platforms.unix;
    license = licenses.bsd2;
  };
}
