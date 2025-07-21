{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Lsp
    nixd # nix
    typescript-language-server # (type|java)script

    ## formating
    shfmt
    treefmt
    nixfmt-rfc-style

    ## C / C++
    gcc
    gdb
    gef
    cmake
    gnumake
    valgrind
    llvmPackages_20.clang-tools
    libtool

    ## Python
    (python3.withPackages (python-pkgs: [
        python-pkgs.ipython
        python-pkgs.debugpy
    ]))

    ## Emacs
    emacs-pgtk    # Emacs 27.2
    ripgrep
    # optional dependencies
    coreutils # basic GNU utilities
  ];
}
