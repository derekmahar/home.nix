{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "derek";
  #home.username = builtins.getEnv "USER"; 
  home.homeDirectory = "/home/derek";
  #home.homeDirectory = builtins.getEnv "HOME";
}
