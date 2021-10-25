-module(cryptoapis_get_last_mined_block_ribsbc).

-export([encode/1]).

-export_type([cryptoapis_get_last_mined_block_ribsbc/0]).

-type cryptoapis_get_last_mined_block_ribsbc() ::
    #{ 'difficulty' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'bits' := binary(),
       'chainwork' := binary(),
       'merkleRoot' := binary(),
       'version' := integer(),
       'versionHex' := binary()
     }.

encode(#{ 'difficulty' := Difficulty,
          'nonce' := Nonce,
          'size' := Size,
          'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleRoot' := MerkleRoot,
          'version' := Version,
          'versionHex' := VersionHex
        }) ->
    #{ 'difficulty' => Difficulty,
       'nonce' => Nonce,
       'size' => Size,
       'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleRoot' => MerkleRoot,
       'version' => Version,
       'versionHex' => VersionHex
     }.
