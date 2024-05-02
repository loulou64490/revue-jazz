{ pkgs, ... }: {
  channel = "stable-23.11";
  packages = [
    pkgs.hugo
  ];
  env = { };
  idx = {
    extensions = [
       "yzhang.markdown-all-in-one"
       "MS-CEINTL.vscode-language-pack-fr"
    ];
  };
}
