-module(cryptoapis_get_last_mined_block_ribsl).

-export([encode/1]).

-export_type([cryptoapis_get_last_mined_block_ribsl/0]).

-type cryptoapis_get_last_mined_block_ribsl() ::
    #{ 'difficulty' := binary(),
       'bits' := binary(),
       'chainwork' := binary(),
       'merkleRoot' := binary(),
       'nonce' := binary(),
       'size' := integer(),
       'strippedSize' := integer(),
       'version' := integer(),
       'versionHex' := binary(),
       'weight' := integer()
     }.

encode(#{ 'difficulty' := Difficulty,
          'bits' := Bits,
          'chainwork' := Chainwork,
          'merkleRoot' := MerkleRoot,
          'nonce' := Nonce,
          'size' := Size,
          'strippedSize' := StrippedSize,
          'version' := Version,
          'versionHex' := VersionHex,
          'weight' := Weight
        }) ->
    #{ 'difficulty' => Difficulty,
       'bits' => Bits,
       'chainwork' => Chainwork,
       'merkleRoot' => MerkleRoot,
       'nonce' => Nonce,
       'size' => Size,
       'strippedSize' => StrippedSize,
       'version' => Version,
       'versionHex' => VersionHex,
       'weight' => Weight
     }.
