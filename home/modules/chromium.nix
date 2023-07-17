{pkgs, ...}: {
  programs = {
    chromium = {
      enable = true;
      package = pkgs.microsoft-edge-dev;
      # commandLineArgs = [
      #   "--ignore-gpu-blocklist"
      # ];
      extensions = [
        {id = "ammjkodgmmoknidbanneddgankgfejfh";} # 7TV
        {id = "ajopnjidmegmdimjlfnijceegpefgped";} # BetterTTV
        {id = "nngceckbapebfimnlniiiahkandclblb";} # Bitwarden
        {id = "mpbjkejclgfgadiemmefgebjfooflfhl";} # Buster
        {
          id = "dcpihecpambacapedldabdbpakmachpb";
          updateUrl = "https://raw.githubusercontent.com/iamadamdev/bypass-paywalls-chrome/master/src/updates/updates.xml";
        } # Bypass Paywalls
        {id = "cofdbpoegempjloogbagkncekinflcnj";} # DeepL
        {id = "ponfpcnoihfmfllpaingbgckeeldkhle";} # Enhancer for YouTube
        {id = "kbfnbcaeplbcioakkpcpgfkobkghlhen";} # Grammarly
        {id = "ndjpnladcallmjemlbaebfadecfhkepb";} # Microsoft 365
        {id = "fbgcedjacmlbgleddnoacbnijgmiolem";} # Microsoft Bing Rewards
        {id = "gpaiobkfhnonedkhhfjpmhdalgeoebfa";} # Microsoft Editor
        {id = "nkhogfcnhgccnigkfnkmdpmcoehofabn";} # PiP Everywhere
        {id = "dgjhfomjieaadpoljlnidmbgkdffpack";} # Sourcegraph
        {id = "jghecgabfgfdldnmbfkhmffcabddioke";} # Volume Master
        {id = "cjpalhdlnbpafiamejdnhcphjbkeiagm";} # Ublock Origin
      ];
    };
  };
}
