-module(cryptoapis_get_last_mined_block_ribsbc).

-export([encode/1]).

-export_type([cryptoapis_get_last_mined_block_ribsbc/0]).

-type cryptoapis_get_last_mined_block_ribsbc() ::
    #{ 'difficulty' := binary(),
       'bits' := binary(),
       'chainwork' := binary(),
       'merkleRoot' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'version' := integer(),
       'versionHex' := binary()
     }.

encode(#{ 'difficulty' := Difficulty,
          'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleRoot' := MerkleRoot,
          'nonce' := Nonce,
          'size' := Size,
          'version' := Version,
          'versionHex' := VersionHex
        }) ->
    #{ 'difficulty' => Difficulty,
       'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleRoot' => MerkleRoot,
       'nonce' => Nonce,
       'size' => Size,
       'version' => Version,
       'versionHex' => VersionHex
     }.
