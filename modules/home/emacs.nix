{ pkgs, ... }:
{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs;    # Emacs 27.2
  };

  services.emacs = {
    enable = true;
    defaultEditor = true;
  };
}
