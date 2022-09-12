-module(cryptoapis_get_last_mined_block_ribsd2).

-export([encode/1]).

-export_type([cryptoapis_get_last_mined_block_ribsd2/0]).

-type cryptoapis_get_last_mined_block_ribsd2() ::
    #{ 'difficulty' := binary(),
       'bits' := binary(),
       'chainwork' := binary(),
       'merkleRoot' := binary(),
       'nonce' := integer(),
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
