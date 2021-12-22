-module(cryptoapis_list_latest_mined_blocks_ribsd).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ribsd/0]).

-type cryptoapis_list_latest_mined_blocks_ribsd() ::
    #{ 'bits' := binary(),
       'chainwork' := binary(),
       'difficulty' := binary(),
       'merkleRoot' := binary(),
       'nonce' := integer(),
       'size' := integer(),
       'version' := integer(),
       'versionHex' := binary()
     }.

encode(#{ 'bits' := Bits,
          'chainwork' := Chainwork,
          'difficulty' := Difficulty,
          'merkleRoot' := MerkleRoot,
          'nonce' := Nonce,
          'size' := Size,
          'version' := Version,
          'versionHex' := VersionHex
        }) ->
    #{ 'bits' => Bits,
       'chainwork' => Chainwork,
       'difficulty' => Difficulty,
       'merkleRoot' => MerkleRoot,
       'nonce' => Nonce,
       'size' => Size,
       'version' => Version,
       'versionHex' => VersionHex
     }.
