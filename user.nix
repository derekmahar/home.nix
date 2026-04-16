{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "ubuntu";
  #home.username = builtins.getEnv "USER"; 
  home.homeDirectory = "/home/ubuntu";
  #home.homeDirectory = builtins.getEnv "HOME";
}
