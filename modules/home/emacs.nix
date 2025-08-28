{ pkgs, ... }:
{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs-pgtk;    # Emacs 27.2
  };

  services.emacs = {
    enable = true;
    defaultEditor = true;
  };
}
